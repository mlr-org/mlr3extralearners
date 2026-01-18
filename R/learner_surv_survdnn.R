#' @title SurvDNN Survival Learner
#' @name mlr_learners_surv.survdnn
#' @author ielbadisy
#'
#' @description
#' Deep neural network survival models from package \CRANpkg{survdnn}.
#' Wraps [survdnn::survdnn()] and [stats::predict()] for class `"survdnn"`.
#'
#' @section Prediction types:
#' - `crank`, `lp`: `predict(type = "lp")`
#' - `distr`: `predict(type = "survival")` evaluated on training event times.
#'
#' @template learner
#' @templateVar id surv.survdnn
#' @export
LearnerSurvSurvDNN = R6::R6Class("LearnerSurvSurvDNN",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    initialize = function() {

      ps = paradox::ps(
        hidden      = paradox::p_uty(tags = "train", default = c(32L, 16L)),
        activation  = paradox::p_fct(
          levels = c("relu", "leaky_relu", "tanh", "sigmoid", "gelu", "elu", "softplus"),
          default = "relu",
          tags = "train"
        ),
        lr          = paradox::p_dbl(lower = 1e-6, upper = 1, default = 1e-4, tags = "train"),
        epochs      = paradox::p_int(lower = 1L, default = 300L, tags = "train"),
        loss        = paradox::p_fct(levels = c("cox", "cox_l2", "aft", "coxtime"), default = "cox", tags = "train"),
        optimizer   = paradox::p_fct(levels = c("adam", "adamw", "sgd", "rmsprop", "adagrad"), default = "adam", tags = "train"),
        optim_args  = paradox::p_uty(default = list(), tags = "train"),
        verbose     = paradox::p_lgl(default = FALSE, tags = "train"),
        dropout     = paradox::p_dbl(lower = 0, upper = 1, default = 0.3, tags = "train"),
        batch_norm  = paradox::p_lgl(default = TRUE, tags = "train"),
        callbacks   = paradox::p_uty(default = NULL, tags = "train"),
        .seed       = paradox::p_int(default = NULL, special_vals = list(NULL), tags = "train"),
        .device     = paradox::p_fct(levels = c("auto", "cpu", "cuda"), default = "auto", tags = "train"),
        na_action   = paradox::p_fct(levels = c("omit", "fail"), default = "omit", tags = "train")
      )

      super$initialize(
        id = "surv.survdnn",
        packages = c("mlr3extralearners", "survdnn"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("crank", "lp", "distr"),
        properties = c("weights", "missings"),
        param_set = ps,
        label = "SurvDNN"
      )
    }
  ),

  private = list(

    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")

      mlr3misc::invoke(
        survdnn::survdnn,
        formula = task$formula(),
        data = task$data(),
        .args = pv
      )
    },

    .predict = function(task) {
      model = self$model
      newdata = ordered_features(task, self)

      # linear predictor
      lp = as.numeric(stats::predict(model, newdata = newdata, type = "lp"))

      # build time grid from training event times
      y_train = stats::model.response(stats::model.frame(model$formula, model$data))
      time_train   = y_train[, "time"]
      status_train = y_train[, "status"]
      times = sort(unique(time_train[status_train == 1]))

      # fallback no events (should be rare)
      if (length(times) == 0L) {
        return(mlr3proba::surv_return(crank = lp, lp = lp))
      }

      # survival matrix on time grid
      surv_df = stats::predict(model, newdata = newdata, times = times, type = "survival")
      surv = as.matrix(surv_df)

      mlr3proba::surv_return(times = times, surv = surv, crank = lp, lp = lp)
    }
  )
)

.extralrns_dict$add("surv.survdnn", function() LearnerSurvSurvDNN$new())
