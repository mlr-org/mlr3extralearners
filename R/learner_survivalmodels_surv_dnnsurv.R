#' @title Survival DNNSurv Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.dnnsurv
#'
#' @template class_learner
#' @templateVar id surv.dnnsurv
#' @templateVar caller dnnsurv
#'
#' @details
#' Custom nets can be used in this learner either using the
#'  [survivalmodels::build_keras_net] utility function or using \CRANpkg{keras}.
#'  The number of output channels should be of length `1` and number of input channels is
#'  the number of features plus number of cuts.
#'
#' @section Custom mlr3 defaults:
#' - `verbose`:
#'   - Actual default: `1L`
#'   - Adjusted default: `0L`
#'   - Reason for change: Prevents plotting.
#'
#' @references
#' Zhao, L., & Feng, D. (2020).
#' DNNSurv: Deep Neural Networks for Survival Analysis Using Pseudo Values.
#' https://arxiv.org/abs/1908.02337
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvDNNSurv = R6Class("LearnerSurvDNNSurv",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps <- ParamSet$new(
        params = list(
          ParamInt$new("cuts", default = 5, lower = 1, tags = "train"),
          ParamUty$new("cutpoints", tags = "train"),
          ParamUty$new("custom_model", tags = "train"),
          ParamFct$new("optimizer",
            default = "adam",
            levels = c("adadelta", "adagrad", "adamax", "adam", "nadam", "rmsprop", "sgd"),
            tags = "train"),
          ParamDbl$new("lr", default = 0.02, lower = 0, tags = "train"),
          ParamDbl$new("beta_1", default = 0.9, lower = 0, upper = 1, tags = "train"),
          ParamDbl$new("beta_2", default = 0.999, lower = 0, upper = 1, tags = "train"),
          ParamDbl$new("epsilon", lower = 0, tags = "train"),
          ParamDbl$new("decay", default = 0, lower = 0, tags = "train"),
          ParamDbl$new("clipnorm", tags = "train"),
          ParamDbl$new("clipvalue", tags = "train"),
          ParamDbl$new("schedule_decay", default = 0.04, tags = "train"),
          ParamDbl$new("momentum", default = 0, lower = 0, tags = "train"),
          ParamLgl$new("nesterov", default = FALSE, tags = "train"),
          ParamUty$new("loss_weights", tags = "train"),
          ParamUty$new("weighted_metrics", tags = "train"),
          ParamLgl$new("early_stopping", default = FALSE, tags = "train"),
          ParamDbl$new("min_delta", default = 0, lower = 0, tags = "train"),
          ParamInt$new("patience", default = 0L, lower = 0, tags = "train"),
          ParamInt$new("verbose", default = 0L, lower = 0, upper = 2, tags = c("train", "predict")),
          ParamDbl$new("baseline", tags = "train"),
          ParamLgl$new("restore_best_weights", default = FALSE, tags = "train"),
          ParamInt$new("batch_size", default = 32L, lower = 1, tags = c("train", "predict")),
          ParamInt$new("epochs", default = 10L, lower = 1, tags = "train"),
          ParamDbl$new("validation_split", default = 0, lower = 0, upper = 1, tags = "train"),
          ParamLgl$new("shuffle", default = TRUE, tags = "train"),
          ParamUty$new("sample_weight", tags = "train"),
          ParamInt$new("initial_epoch", default = 0L, lower = 0, tags = "train"),
          ParamInt$new("steps_per_epoch", lower = 1, tags = "train"),
          ParamInt$new("validation_steps", lower = 1, tags = "train"),
          ParamInt$new("steps", lower = 0, tags = "predict"),
          ParamUty$new("callbacks", tags = "predict")
        )
      )

      ps$add_dep("lr", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam", "rmsprop", "sgd")))
      ps$add_dep("beta_1", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam")))
      ps$add_dep("beta_2", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam")))
      ps$add_dep("epsilon", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam")))
      ps$add_dep("decay", "optimizer", CondAnyOf$new(c("adamax", "adam", "sgd")))
      ps$add_dep("clipnorm", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam", "sgd")))
      ps$add_dep("clipvalue", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam", "sgd")))
      ps$add_dep("schedule_decay", "optimizer", CondEqual$new("nadam"))
      ps$add_dep("momentum", "optimizer", CondEqual$new("sgd"))
      ps$add_dep("nesterov", "optimizer", CondEqual$new("sgd"))

      ps$add_dep("min_delta", "early_stopping", CondEqual$new(TRUE))
      ps$add_dep("patience", "early_stopping", CondEqual$new(TRUE))
      ps$add_dep("baseline", "early_stopping", CondEqual$new(TRUE))
      ps$add_dep("restore_best_weights", "early_stopping", CondEqual$new(TRUE))

      # verbose default changed to prevent plotting
      ps$values$verbose = 0L

      super$initialize(
        id = "surv.dnnsurv",
        feature_types = c("integer", "numeric"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_surv.dnnsurv",
        packages = c("survivalmodels", "keras", "pseudo", "tensorflow", "distr6")
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      mlr3misc::invoke(
        survivalmodels::dnnsurv,
        data = as.data.frame(task$data()),
        time_variable = task$target_names[1L],
        status_variable = task$target_names[2L],
        .args = pars
      )

    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = task$data(cols = task$feature_names)

      pred = mlr3misc::invoke(
        predict,
        self$model,
        newdata = newdata,
        distr6 = TRUE,
        type = "all",
        .args = pars
      )

      list(crank = pred$risk, distr = pred$surv)
    }
  )
)

.extralrns_dict$add("surv.dnnsurv", LearnerSurvDNNSurv)
