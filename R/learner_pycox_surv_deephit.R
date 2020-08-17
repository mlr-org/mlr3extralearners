#' @title Survival DeepHit Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.deephit
#'
#' @template class_learner_reticulate
#' @templateVar id surv.deephit
#' @templateVar caller pycox.models.DeepHitSingle
#' @templateVar pypkg pycox
#' @templateVar pypkgurl https://pypi.org/project/pycox/
#'
#' @details
#' Custom nets can be used in this learner either using the [build_pytorch_net] utility function
#' or using `torch` via \CRANpkg{reticulate}. However note that the number of output channels
#' depends on the number of discretised time-points, i.e. the parameters `cuts` or `cutpoints`.
#'
#' @references
#' Changhee Lee, William R Zame, Jinsung Yoon, and Mihaela van der Schaar.
#' Deephit: A deep learning approach to survival analysis with competing risks.
#' In Thirty-Second AAAI Conference on Artificial Intelligence, 2018.
#' http://medianetlab.ee.ucla.edu/papers/AAAI_2018_DeepHit
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvDeephit = R6::R6Class("LearnerSurvDeephit",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ParamSet$new(
        params = list(
          ParamDbl$new("frac", default = 0, lower = 0, upper = 1, tags = c("train", "prep")),
          ParamDbl$new("cuts", default = 10, lower = 1, tags = c("train", "prep")),
          ParamUty$new("cutpoints", tags = c("train", "prep")),
          ParamFct$new("scheme",
            default = "equidistant", levels = c("equidistant", "quantiles"),
            tags = c("train", "prep")),
          ParamDbl$new("cut_min", default = 0, lower = 0, tags = c("train", "prep")),
          ParamUty$new("custom_net", tags = c("train", "net")),
          ParamUty$new("num_nodes", tags = c("train", "net")),
          ParamLgl$new("batch_norm", default = TRUE, tags = c("train", "net")),
          ParamDbl$new("dropout",
            default = "None", special_vals = list("None"),
            lower = 0, upper = 1, tags = c("train", "net")),
          ParamFct$new("activation",
            default = "relu", levels = pycox_activations,
            tags = c("train", "act")),
          ParamDbl$new("alpha", default = 1, lower = 0, tags = c("train", "opt")),
          ParamDbl$new("lambd", default = 0.5, lower = 0, tags = c("train", "opt")),
          ParamDbl$new("mod_alpha", default = 0.2, lower = 0, upper = 1, tags = c("train", "mod")),
          ParamDbl$new("sigma", default = 0.1, tags = c("train", "mod")),
          ParamUty$new("device", tags = c("train", "mod")),
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
          ParamLgl$new("lr_finder", default = FALSE, tags = c("train", "lrf")),
          ParamInt$new("batch_size", default = 256, tags = c("train", "lrf", "fit", "predict")),
          ParamDbl$new("tolerance",
            lower = 0, upper = Inf, default = Inf,
            tags = c("train", "lrf")),
          ParamInt$new("epochs", lower = 1, upper = Inf, default = 1, tags = c("train", "fit")),
          ParamLgl$new("verbose", default = TRUE, tags = c("train", "fit")),
          ParamInt$new("num_workers", default = 0L, tags = c("train", "fit", "predict")),
          ParamLgl$new("shuffle", default = TRUE, tags = c("train", "fit")),
          ParamLgl$new("best_weights", default = FALSE, tags = c("train", "callbacks")),
          ParamLgl$new("early_stopping", default = FALSE, tags = c("train", "callbacks")),
          ParamDbl$new("min_delta", default = 0, tags = c("train", "early")),
          ParamInt$new("patience", default = 10, tags = c("train", "early")),
          ParamLgl$new("interpolate", default = FALSE, tags = "predict"),
          ParamInt$new("sub", default = 10, lower = 1, tags = c("inter", "predict")),
          ParamFct$new("interpolate_scheme",
            default = "const_pdf",
            levels = c("const_hazard", "const_pdf"), tags = c("inter", "predict"))
        )
      )

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

      ps$add_dep("sub", "interpolate", CondEqual$new(TRUE))
      ps$add_dep("interpolate_scheme", "interpolate", CondEqual$new(TRUE))

      super$initialize(
        id = "surv.deephit",
        feature_types = c("integer", "numeric"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        man = "mlr3extralearners::surv.deephit",
        packages = "reticulate"
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
        task = task,
        discretise = TRUE,
        model = "DeepHit",
        .args = pars
      )
      x_train = data$x_train
      y_train = data$y_train

      # Set-up network architecture
      pars = self$param_set$get_values(tags = "net")
      if (!is.null(pars$custom_net)) {
        net = pars$custom_net
      } else {
        net = mlr3misc::invoke(
          torchtuples$practical$MLPVanilla,
          in_features = x_train$shape[1],
          num_nodes = reticulate::r_to_py(as.integer(pars$num_nodes)),
          activation = mlr3misc::invoke(get_pycox_activation,
            construct = FALSE,
            .args = self$param_set$get_values(tags = "act")),
          out_features = data$labtrans$out_features,
          .args = pars[names(pars) %nin% "num_nodes"]
        )
      }

      # Get optimizer and set-up model
      pars = self$param_set$get_values(tags = "mod")
      if (!is.null(pars$modalpha)) {
        names(pars)[names(pars) == "modalpha"] = "alpha"
      }
      model = mlr3misc::invoke(
        pycox$models$DeepHitSingle,
        net = net,
        duration_index = data$labtrans$cuts,
        optimizer = mlr3misc::invoke(get_pycox_optim,
          net = net,
          .args = self$param_set$get_values(tags = "opt")),
        .args = pars
      )

      # Optionally internally optimise learning rate for all optimizers except Adadelta
      pars = self$param_set$get_values(tags = "lrf")
      if (is.null(pars$optimizer) || pars$optimizer != "adadelta") {
        if (!is.null(pars$lr_finder) && pars$lr_finder) {
          lrfinder = mlr3misc::invoke(
            model$lr_finder,
            input = x_train,
            target = y_train,
            .args = pars[names(pars) %nin% c("optimizer", "lr_finder")]
          )
          model$optimizer$set_lr(lrfinder$get_best_lr())
        }
      }

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

      # get test data

      x_test = task$data(cols = task$feature_names)
      x_test = reticulate::r_to_py(x_test)$values$astype("float32")

      # predict survival probabilities
      if (!is.null(self$param_set$values$interpolate) && self$param_set$values$interpolate) {
        pars_inter = self$param_set$get_values(tags = "inter")
        if (!is.null(pars_inter$interpolate_scheme)) {
          names(pars_inter)[names(pars_inter) == "interpolate_scheme"] = "scheme"
        }
        surv = mlr3misc::invoke(
          self$model$model$interpolate,
          sub = ifelse(is.null(pars_inter$sub), 10L, as.integer(pars_inter$sub)),
          .args = pars_inter[names(pars_inter) %nin% c("sub")]
        )
        pars = self$param_set$get_values(tags = "predict")
        pars = pars[names(pars) %nin% c(names(pars_inter), "interpolate")]
        surv = mlr3misc::invoke(
          surv$predict_surv_df,
          x_test,
          .args = pars
        )
      } else {
        pars = self$param_set$get_values(tags = "predict")
        surv = mlr3misc::invoke(
          self$model$model$predict_surv_df,
          x_test,
          .args = pars
        )
      }

      # cast to distr6
      x = rep(list(list(x = round(as.numeric(rownames(surv)), 5), pdf = 0)), task$nrow)
      for (i in seq_len(task$nrow)) {
        # fix for rounding errors
        x[[i]]$pdf = round(1 - surv[, i], 6)
        x[[i]]$pdf = c(x[[i]]$pdf[1], diff(x[[i]]$pdf))
        x[[i]]$pdf[x[[i]]$pdf < 0.000001] = 0L
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

lrns_dict$add("surv.deephit", LearnerSurvDeephit)
