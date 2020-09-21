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
#' Code for generating the conditional probabilities and pre-processing data is taken from
#' \url{https://github.com/lilizhaoUM/DNNSurv}.
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
        packages = c("keras", "pseudo", "tensorflow")
      )
    }
  ),

  private = list(
    .train = function(task) {

      data = task$data()
      pars = self$param_set$get_values(tags = "prep")
      time = data[[task$target_names[1L]]]
      if (is.null(pars$cutpoints)) {
        cuts = ifelse(is.null(pars$cuts), 5L, pars$cuts)
        cutpoints = unique(round(seq.int(min(time), max(time), length.out = cuts), 2))
      } else {
        cutpoints = pars$cutpoints
      }
      pseudo_cond = get_pseudo_conditional(
        time,
        data[[task$target_names[2L]]],
        cutpoints)
      x = as.matrix(task$data(cols = task$feature_names))[pseudo_cond$id, ]
      smatrix = model.matrix(~ as.factor(pseudo_cond$s) + 0)
      x_train = cbind(x, smatrix)
      y_train = pseudo_cond$pseudost

      pars = self$param_set$get_values(tags = "mod")
      if (is.null(pars$custom_model)) {
        model = keras::keras_model_sequential()
        keras::layer_dense(model,
          units = 8, kernel_regularizer = keras::regularizer_l2(0.0001),
          activation = "tanh",
          input_shape = dim(x_train)[[2]])
        keras::layer_dense(model,
          units = 4, kernel_regularizer = keras::regularizer_l2(0.01),
          activation = "tanh")
        keras::layer_dense(model, units = 1, activation = "sigmoid")
      } else {
        model = pars$custom_model
      }

      pars = self$param_set$get_values(tags = "compile")
      mlr3misc::invoke(
        keras::compile,
        model,
        loss = "mse",
        metrics = "mae",
        optimizer = mlr3misc::invoke(
          get_keras_optimizer,
          .args = self$param_set$get_values(tags = "opt")
        ),
        .args = pars
      )

      if (!is.null(self$param_set$values$early_stopping) && self$param_set$values$early_stopping) {
        callbacks = list(
          mlr3misc::invoke(
            keras::callback_early_stopping,
            .args = self$param_set$get_values(tags = "early")
          )
        )
      } else {
        callbacks = NULL
      }
      pars = self$param_set$get_values(tags = "fit")
      mlr3misc::invoke(
        keras::fit,
        model,
        x_train,
        y_train,
        callbacks = callbacks,
        .args = pars
      )

      structure(list(model = model, cutpoints = cutpoints), class = "dnnsurv")
    },

    .predict = function(task) {

      # format test data

      x_test = as.matrix(task$data(cols = task$feature_names))
      x_test_all = do.call(rbind, replicate(length(self$model$cutpoints), x_test, simplify = FALSE))
      smatrix_test = model.matrix(~ as.factor(rep(self$model$cutpoints, each = nrow(x_test))) + 0)
      x_test_all = cbind(x_test_all, smatrix_test)

      # predict test data
      pars = self$param_set$get_values(tags = "predict")
      pred = mlr3misc::invoke(
        predict,
        self$model$model,
        x = x_test_all,
        .args = pars
      )
      pred <- matrix(pred, nrow = task$nrow)
      ypred <- lapply(seq_along(self$model$cutpoints), function(i) {
        apply(pred[, 1:i, drop = FALSE], 1, prod)
      })
      surv_prob <- Reduce(cbind, ypred)

      # cast to distr6
      x = rep(list(list(x = self$model$cutpoints, cdf = 0)), task$nrow)
      for (i in seq_len(task$nrow)) {
        x[[i]]$cdf = 1 - surv_prob[i, ]
      }

      distr = distr6::VectorDistribution$new(
        distribution = "WeightedDiscrete", params = x,
        decorators = c("CoreStatistics", "ExoticStatistics"))

      # return prediction object
      mlr3proba::PredictionSurv$new(
        task = task,
        distr = distr,
        crank = distr$mean()
      )
    }
  )
)

lrns_dict$add("surv.dnn", LearnerSurvDNNSurv)
