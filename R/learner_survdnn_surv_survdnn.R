#' @title SurvDNN Survival Learner
#' @name mlr_learners_surv.survdnn
#' @author ielbadisy
#'
#' @description
#' Deep neural network survival models from package \CRANpkg{survdnn}, aimed at
#' tabular (low to moderate-dimensional) covariate settings using torch-based
#' multilayer perceptrons. The learner wraps [survdnn::survdnn()].
#'
#' @section Prediction types:
#' This learner supports the following prediction types:
#' \describe{
#' \item{`lp`}{A numeric vector of linear predictors, one per observation.
#' For `loss` \code{"cox"} / \code{"cox_l2"} this is a log-risk score (higher implies worse prognosis).
#' For \code{"aft"}, [predict.survdnn()] returns the predicted log-time location \eqn{\mu(x)}
#' (higher implies better prognosis), therefore the learner internally negates it such that higher
#' values imply higher risk (consistent with \CRANpkg{mlr3} conventions). For \code{"coxtime"},
#' this is \eqn{g(t_0, x)} evaluated at a reference time.}
#' \item{`crank`}{same as `lp`.}
#' \item{`distr`}{A survival matrix (rows = observations, columns = time points) based on
#' \code{predict(type = "survival")}. By default, predictions are evaluated on the unique event times
#' of the training data.}
#' }
#'
#' @template learner
#' @templateVar id surv.survdnn
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvDNN = R6::R6Class("LearnerSurvDNN",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    initialize = function() {

      param_set = ps(
        hidden      = p_uty(tags = "train", default = c(32L, 16L)),
        activation  = p_fct(
          levels = c("relu", "leaky_relu", "tanh", "sigmoid", "gelu", "elu", "softplus"),
          default = "relu",
          tags = "train"
        ),
        lr          = p_dbl(lower = 1e-6, upper = 1, default = 1e-4, tags = "train"),
        epochs      = p_int(lower = 1L, default = 300L, tags = "train"),
        loss        = p_fct(levels = c("cox", "cox_l2", "aft", "coxtime"), default = "cox", tags = "train"),
        optimizer   = p_fct(levels = c("adam", "adamw", "sgd", "rmsprop", "adagrad"), default = "adam", tags = "train"),
        optim_args  = p_uty(default = list(), tags = "train"),
        verbose     = p_lgl(default = FALSE, tags = "train"),
        dropout     = p_dbl(lower = 0, upper = 1, default = 0.3, tags = "train"),
        batch_norm  = p_lgl(default = TRUE, tags = "train"),
        callbacks   = p_uty(default = NULL, tags = "train"),
        .seed       = p_int(default = NULL, special_vals = list(NULL), tags = "train"),
        .device     = p_fct(levels = c("auto", "cpu", "cuda"), default = "auto", tags = "train"),
        na_action   = p_fct(levels = c("omit", "fail"), default = "omit", tags = "train")
      )

      super$initialize(
        id = "surv.survdnn",
        param_set = param_set,
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("crank", "lp", "distr"),
        # enable marshaling to support encapsulation and saveRDS/readRDS
        properties = "marshal",
        packages = c("mlr3extralearners", "survdnn", "torch"),
        man = "mlr3extralearners::mlr_learners_surv.survdnn",
        label = "SurvDNN (torch-based deep survival models)"
      )
    },

    #' @description
    #' Marshal the learner's model (required for encapsulation / saveRDS).
    marshal = function(...) {
      mlr3::learner_marshal(.learner = self, ...)
    },

    #' @description
    #' Unmarshal the learner's model.
    unmarshal = function(...) {
      mlr3::learner_unmarshal(.learner = self, ...)
    }
  ),

  active = list(
    #' @field marshaled (`logical(1)`)
    #' Whether the learner has been marshaled.
    marshaled = function() {
      mlr3::learner_marshaled(self)
    }
  ),

  private = list(

    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")

      # get training Surv object and attach it to the model (survives encapsulation)
      y_train = task$truth()
      event_times = task$unique_event_times()
      n_events = length(event_times)

      # guard: Cox-type objectives require at least one observed event
      loss = pv$loss %??% "cox"
      if (loss %in% c("cox", "cox_l2", "coxtime") && n_events == 0L) {
        mlr3misc::stopf("No events in training data (all observations are censored). Loss '%s' requires at least one event.", loss)
      }

      model = mlr3misc::invoke(
        survdnn::survdnn,
        formula = task$formula(),
        data = task$data(),
        .args = pv
      )

      # default time grid:
      ## Cox / Cox-L2 / Cox-Time: unique event times (per construction)
      ## AFT: all unique observed times (can be all-censored)
      if (identical(loss, "aft")) {
        times_train = task$unique_times()
      } else {
        times_train = event_times
      }

      attr(model, "y_train") = y_train
      attr(model, "times_train") = times_train

      model
    },

    .predict = function(task) {
      model = self$model
      newdata = ordered_features(task, self)

      # lp / crank
      lp = as.numeric(mlr3misc::invoke(
        predict,
        model,
        newdata = newdata,
        type = "lp"
      ))

      # mlr3proba convention: higher lp => lower survival
      if (identical(model$loss, "aft")) {
        lp = -lp
      }

      times = attr(model, "times_train")

      # always return a distr prediction
      if (length(times) == 0L) {
        times = 1
        surv = matrix(1, nrow = nrow(newdata), ncol = 1L)
        return(mlr3proba::surv_return(times = times, surv = surv, lp = lp))
      }

      surv_df = mlr3misc::invoke(
        predict,
        model,
        newdata = newdata,
        times = times,
        type = "survival"
      )
      surv = as.matrix(surv_df)
      
      # crank is automatically derived from lp if not provided
      mlr3proba::surv_return(times = times, surv = surv, lp = lp)
    }
  )
)

.extralrns_dict$add("surv.survdnn", LearnerSurvDNN)



#' @export
marshal_model.survdnn = function(model, inplace = FALSE, ...) {
  # model is a fitted object from survdnn::survdnn() (class "survdnn")
  # torch external pointers must be converted to a raw payload
  if (!inherits(model$model, "nn_module")) {
    return(model)
  }

  tmp = tempfile(fileext = ".pt")
  torch::torch_save(model$model, tmp)

  raw_model = readBin(tmp, what = "raw", n = file.info(tmp)$size)

  # keep everything except the live torch module
  meta = model
  meta$model = NULL
  # device is a torch_device external pointer as well, just drop it
  meta$device = NULL

  out = structure(
    list(
      marshaled = raw_model,
      meta = meta,
      packages = "mlr3extralearners"
    ),
    class = c("survdnn_marshaled", "marshaled")
  )

  # preserve learner-added attributes if present
  for (nm in c("y_train", "times_train")) {
    v = attr(model, nm, exact = TRUE)
    if (!is.null(v)) attr(out, nm) = v
  }

  out
}

#' @export
unmarshal_model.survdnn_marshaled = function(model, inplace = FALSE, ...) {
  tmp = tempfile(fileext = ".pt")
  writeBin(model$marshaled, tmp)

  net = torch::torch_load(tmp)

  # rebuild survdnn object
  out = model$meta
  out$model = net
  class(out) = "survdnn"

  # restore learner-added attributes if present
  for (nm in c("y_train", "times_train")) {
    v = attr(model, nm, exact = TRUE)
    if (!is.null(v)) attr(out, nm) = v
  }

  out
}
