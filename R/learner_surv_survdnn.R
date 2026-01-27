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
#' values imply higher risk (consistent with \CRANpkg{mlr3proba} conventions). For \code{"coxtime"},
#' this is \eqn{g(t_0, x)} evaluated at a reference time.}
#' \item{`crank`}{Same as `lp`.}
#' \item{`distr`}{A survival matrix (rows = observations, columns = time points) based on
#' \code{predict(type = "survival")}. By default, predictions are evaluated on the unique event times
#' of the training data.}
#' }
#'
#' @template learner
#' @templateVar id surv.survdnn
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
        packages = c("mlr3extralearners", "survdnn"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("crank", "lp", "distr"),
        # survdnn currently does not support observation weights and does not
        # train with missings (it omits or fails).
        properties = character(0),
        param_set = param_set,
        label = "SurvDNN (torch-based deep survival models)"
      )
    }
  ),

  private = list(

    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")

      model = mlr3misc::invoke(
        survdnn::survdnn,
        formula = task$formula(),
        data = task$data(),
        .args = pv
      )

      # store training survival outcome + default time grid for predictions
      y_train = stats::model.response(stats::model.frame(task$formula(), task$data()))
      self$state$y_train = y_train
      self$state$times_train = sort(unique(y_train[, "time"][y_train[, "status"] == 1]))

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

      times = self$state$times_train

      # fallback: no events in training data (all censored)
      if (length(times) == 0L) {
        return(mlr3proba::surv_return(crank = lp, lp = lp))
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

.extralrns_dict$add("surv.survdnn", function() LearnerSurvDNN$new())
