#' @title Survival DNNSurv Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.dnn
#'
#' @template class_learner
#' @templateVar id surv.dnn
#' @templateVar caller dnnsurv
#'
#' @description
#' Implements the DNNSurv neural network.
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
  inherit = LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps <- ParamSet$new(
        params = list(
          ParamInt$new("cuts", default = 5, lower = 1, tags = c("train", "prep")),
          ParamUty$new("cutpoints", tags = c("train", "prep")),
          ParamUty$new("custom_model", tags = c("train", "mod")),
          ParamFct$new("optimizer",
            default = "adam", levels = keras_optimizers,
            tags = c("train", "opt")),
          ParamDbl$new("lr", default = 0.02, lower = 0, tags = c("train", "opt")),
          ParamDbl$new("beta_1", default = 0.9, lower = 0, upper = 1, tags = c("train", "opt")),
          ParamDbl$new("beta_2", default = 0.999, lower = 0, upper = 1, tags = c("train", "opt")),
          ParamDbl$new("epsilon", lower = 0, tags = c("train", "opt")),
          ParamDbl$new("decay", default = 0, lower = 0, tags = c("train", "opt")),
          ParamDbl$new("clipnorm", tags = c("train", "opt")),
          ParamDbl$new("clipvalue", tags = c("train", "opt")),
          ParamDbl$new("schedule_decay", default = 0.04, tags = c("train", "opt")),
          ParamDbl$new("momentum", default = 0, lower = 0, tags = c("train", "opt")),
          ParamLgl$new("nesterov", default = FALSE, tags = c("train", "opt")),
          ParamUty$new("loss_weights", tags = c("train", "compile")),
          ParamUty$new("weighted_metrics", tags = c("train", "compile")),
          ParamLgl$new("early_stopping", default = FALSE, tags = "train"),
          ParamDbl$new("min_delta", default = 0, lower = 0, tags = c("train", "early")),
          ParamInt$new("patience", default = 0, lower = 0, tags = c("train", "early")),
          ParamInt$new("verbose", default = 0, lower = 0, upper = 2, tags = c(
            "train", "early",
            "fit", "predict")),
          ParamDbl$new("baseline", tags = c("train", "early")),
          ParamLgl$new("restore_best_weights", default = FALSE, tags = c("train", "early")),
          ParamInt$new("batch_size", default = 32, lower = 1, tags = c("train", "fit", "predict")),
          ParamInt$new("epochs", default = 10, lower = 1, tags = c("train", "fit")),
          ParamDbl$new("validation_split", default = 0, lower = 0, upper = 1,
                       tags = c("train", "fit")),
          ParamLgl$new("shuffle", default = TRUE, tags = c("train", "fit")),
          ParamUty$new("class_weight", tags = c("train", "fit")),
          ParamUty$new("sample_weight", tags = c("train", "fit")),
          ParamInt$new("initial_epoch", default = 0, lower = 0, tags = c("train", "fit")),
          ParamInt$new("steps_per_epoch", lower = 1, tags = c("train", "fit")),
          ParamInt$new("validation_steps", lower = 1, tags = c("train", "fit")),
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
        id = "surv.dnn",
        feature_types = c("integer", "numeric"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_surv.dnn",
        packages = c("survivalmodels", "keras", "pseudo", "tensorflow")
      )
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")
      mlr3misc::invoke(
        survivalmodels::survdnn,
        formula = task$formula(),
        data = task$data(),
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

      PredictionSurv$new(task = task, crank = pred$risk, distr = pred$distr)
    }
  )
)

lrns_dict$add("surv.dnn", LearnerSurvDNNSurv)
