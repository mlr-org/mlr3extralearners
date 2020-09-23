#' @title Survival Logistic-Hazard Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.loghaz
#'
#' @template class_learner
#' @templateVar id surv.loghaz
#' @templateVar caller loghaz
#'
#' @details
#' Custom nets can be used in this learner using [survivalmodels::build_pytorch_net]
#' or by directly using `torch` via \CRANpkg{reticulate}. However note that the number of output
#' channels depends on the number of discretised time-points, i.e. the parameters `cuts` or
#' `cutpoints`.
#'
#' @references
#' Gensheimer, M. F., & Narasimhan, B. (2018).
#' A Simple Discrete-Time Survival Model for Neural Networks, 1–17.
#' https://doi.org/arXiv:1805.00917v3
#'
#' Kvamme, H., & Borgan, Ø. (2019).
#' Continuous and discrete-time survival prediction with neural networks.
#' https://doi.org/arXiv:1910.06724.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvLogisticHazard = R6::R6Class("LearnerSurvLogisticHazard",
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
          ParamUty$new("device", tags = c("train", "mod")),
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
        id = "surv.loghaz",
        feature_types = c("integer", "numeric"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        man = "mlr3extralearners::surv.loghaz",
        packages = c("survivalmodels", "reticulate")
      )
    }
  ),

  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")
      mlr3misc::invoke(
        survivalmodels::loghaz,
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

lrns_dict$add("surv.loghaz", LearnerSurvLogisticHazard)
