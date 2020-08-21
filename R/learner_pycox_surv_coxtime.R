#' @title Survival Cox-Time Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.coxtime
#'
#' @template class_learner_reticulate
#' @templateVar id surv.coxtime
#' @templateVar caller pycox.models.CoxTime
#' @templateVar pypkg pycox
#' @templateVar pypkgurl https://pypi.org/project/pycox/
#'
#' @references
#' Kvamme, H., Borgan, Ø., & Scheel, I. (2019).
#' Time-to-event prediction with neural networks and Cox regression.
#' Journal of Machine Learning Research, 20(129), 1–30.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvCoxtime = R6::R6Class("LearnerSurvCoxtime",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ParamSet$new(
        params = list(
          ParamDbl$new("frac", default = 0, lower = 0, upper = 1, tags = c("train", "prep")),
          ParamLgl$new("standardize_time", default = FALSE, tags = c("train", "prep")),
          ParamLgl$new("log_duration", default = FALSE, tags = c("train", "prep")),
          ParamLgl$new("with_mean", default = TRUE, tags = c("train", "prep")),
          ParamLgl$new("with_std", default = TRUE, tags = c("train", "prep")),
          ParamUty$new("num_nodes", tags = c("train", "net", "required")),
          ParamLgl$new("batch_norm", default = TRUE, tags = c("train", "net")),
          ParamDbl$new("dropout",
            default = "None", special_vals = list("None"),
            lower = 0, upper = 1, tags = c("train", "net")),
          ParamFct$new("activation",
            default = "relu", levels = pycox_activations,
            tags = c("train", "act")),
          ParamDbl$new("alpha", default = 1, lower = 0, tags = c("train", "opt")),
          ParamDbl$new("lambd", default = 0.5, lower = 0, tags = c("train", "opt")),
          ParamUty$new("device", tags = c("train", "mod")),
          ParamDbl$new("shrink", default = 0, lower = 0, tags = c("train", "mod")),
          ParamUty$new("loss", tags = c("train", "mod")),
          ParamFct$new("optimizer",
            default = "adam", levels = pycox_optimizers,
            tags = c("train", "opt")),
          ParamDbl$new("rho", default = 0.9, tags = c("train", "opt")),
          ParamDbl$new("eps", default = 1e-8, tags = c("train", "opt")),
          ParamDbl$new("lr", default = 1, tags = c("train", "opt")),
          ParamDbl$new("weight_decay", default = 0, tags = c("train", "opt")),
          ParamDbl$new("learning_rate", default = 1e-2, tags = c("train", "opt")),
          ParamDbl$new("lr_decay", default = 0, tags = c("train", "opt")),
          ParamUty$new("betas", default = c(0.9, 0.999), tags = c("train", "opt")),
          ParamLgl$new("amsgrad", default = FALSE, tags = c("train", "opt")),
          ParamDbl$new("t0", default = 1e6, tags = c("train", "opt")),
          ParamDbl$new("momentum", default = 0, tags = c("train", "opt")),
          ParamLgl$new("centered", default = TRUE, tags = c("train", "opt")),
          ParamUty$new("etas", default = c(0.5, 1.2), tags = c("train", "opt")),
          ParamUty$new("step_sizes", default = c(1e-6, 50), tags = c("train", "opt")),
          ParamDbl$new("dampening", default = 0, tags = c("train", "opt")),
          ParamLgl$new("nesterov", default = FALSE, tags = c("train", "opt")),
          ParamInt$new("batch_size", default = 256, tags = c("train", "fit", "predict")),
          ParamInt$new("epochs", lower = 1, upper = Inf, default = 1, tags = c("train", "fit")),
          ParamLgl$new("verbose", default = TRUE, tags = c("train", "fit")),
          ParamInt$new("num_workers", default = 0L, tags = c("train", "fit", "predict")),
          ParamLgl$new("shuffle", default = TRUE, tags = c("train", "fit")),
          ParamLgl$new("best_weights", default = FALSE, tags = c("train", "callbacks")),
          ParamLgl$new("early_stopping", default = FALSE, tags = c("train", "callbacks")),
          ParamDbl$new("min_delta", default = 0, tags = c("train", "early")),
          ParamInt$new("patience", default = 10, tags = c("train", "early"))
        )
      )

      ps$add_dep("log_duration", "standardize_time", CondEqual$new(TRUE))
      ps$add_dep("with_mean", "standardize_time", CondEqual$new(TRUE))
      ps$add_dep("with_std", "standardize_time", CondEqual$new(TRUE))

      ps$add_dep("rho", "optimizer", CondEqual$new("adadelta"))
      ps$add_dep("eps", "optimizer", CondAnyOf$new(setdiff(pycox_optimizers,
                                                           c("asgd", "rprop", "sgd"))))
      ps$add_dep("lr", "optimizer", CondEqual$new("adadelta"))
      ps$add_dep(
        "weight_decay", "optimizer",
        CondAnyOf$new(setdiff(pycox_optimizers, c("rprop", "sparse_adam"))))
      ps$add_dep("learning_rate", "optimizer", CondAnyOf$new(setdiff(pycox_optimizers, "adadelta")))
      ps$add_dep("lr_decay", "optimizer", CondEqual$new("adadelta"))
      ps$add_dep("betas", "optimizer", CondAnyOf$new(c("adam", "adamax", "adamw", "sparse_adam")))
      ps$add_dep("amsgrad", "optimizer", CondAnyOf$new(c("adam", "adamw")))
      ps$add_dep("lambd", "optimizer", CondEqual$new("asgd"))
      ps$add_dep("t0", "optimizer", CondEqual$new("asgd"))
      ps$add_dep("momentum", "optimizer", CondAnyOf$new(c("sgd", "rmsprop")))
      ps$add_dep("centered", "optimizer", CondEqual$new("rmsprop"))
      ps$add_dep("etas", "optimizer", CondEqual$new("rprop"))
      ps$add_dep("step_sizes", "optimizer", CondEqual$new("rprop"))
      ps$add_dep("dampening", "optimizer", CondEqual$new("sgd"))
      ps$add_dep("nesterov", "optimizer", CondEqual$new("sgd"))

      ps$add_dep("min_delta", "early_stopping", CondEqual$new(TRUE))
      ps$add_dep("patience", "early_stopping", CondEqual$new(TRUE))

      super$initialize(
        id = "surv.coxtime",
        feature_types = c("integer", "numeric"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        man = "mlr3extralearners::surv.coxtime",
        packages = c("reticulate", "pracma")
      )
    }
  ),

  private = list(
    .train = function(task) {

      pycox = reticulate::import("pycox")
      torch = reticulate::import("torch")
      torchtuples = reticulate::import("torchtuples")

      # Prepare data and optionally standardise outcome
      pars = self$param_set$get_values(tags = "prep")
      data = mlr3misc::invoke(
        prepare_train_data,
        model = "CoxTime",
        task = task,
        .args = pars
      )
      x_train = data$x_train
      y_train = data$y_train

      # Set-up network architecture
      pars = self$param_set$get_values(tags = "net")
      net = mlr3misc::invoke(
        pycox$models$cox_time$MLPVanillaCoxTime,
        in_features = x_train$shape[1],
        num_nodes = reticulate::r_to_py(as.integer(pars$num_nodes)),
        activation = mlr3misc::invoke(get_pycox_activation,
          construct = FALSE,
          .args = self$param_set$get_values(tags = "act")),
        .args = pars[names(pars) %nin% "num_nodes"]
      )

      # Get optimizer and set-up model
      pars = self$param_set$get_values(tags = "mod")
      model = mlr3misc::invoke(
        pycox$models$CoxTime,
        net = net,
        labtrans = data$labtrans,
        optimizer = mlr3misc::invoke(get_pycox_optim,
          net = net,
          .args = self$param_set$get_values(tags = "opt")),
        .args = pars
      )

      # Optionally get callbacks
      pars = self$param_set$get_values(tags = "callbacks")
      early_stopping = !is.null(pars$early_stopping) && pars$early_stopping
      if (!early_stopping && !is.null(pars$best_weights) && pars$best_weights) {
        callbacks = reticulate::r_to_py(list(torchtuples$callbacks$BestWeights()))
      } else if (early_stopping) {
        callbacks = reticulate::r_to_py(list(
          mlr3misc::invoke(torchtuples$callbacks$EarlyStopping,
            .args = self$param_set$get_values(tags = "early"))
        ))
      } else {
        callbacks = NULL
      }

      # Fit model
      pars = self$param_set$get_values(tags = "fit")
      mlr3misc::invoke(
        model$fit,
        input = x_train,
        target = y_train,
        callbacks = callbacks,
        val_data = data$val,
        .args = pars
      )
    },

    .predict = function(task) {

      # compute baselines

      self$model$model$compute_baseline_hazards()

      # get test data
      x_test = task$data(cols = task$feature_names)
      x_test = reticulate::r_to_py(x_test)$values$astype("float32")

      # predict survival probabilities
      pars = self$param_set$get_values(tags = "predict")
      surv = mlr3misc::invoke(
        self$model$model$predict_surv_df,
        x_test,
        .args = pars
      )

      # cast to distr6
      x = rep(list(list(x = round(as.numeric(rownames(surv)), 5), pdf = 0)), task$nrow)
      for (i in seq_len(task$nrow)) {
        # fix for infinite hazards - invalidate results for NaNs
        if (any(is.nan(surv[, i]))) {
          x[[i]]$pdf = c(1, numeric(length(x[[i]]$x) - 1))
        } else {
          x[[i]]$pdf = round(1 - surv[, i], 6)
          x[[i]]$pdf = c(x[[i]]$pdf[1], diff(x[[i]]$pdf))
          x[[i]]$pdf[x[[i]]$pdf < 0.000001] = 0L
          x[[i]]$pdf
        }
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

lrns_dict$add("surv.coxtime", LearnerSurvCoxtime)
