#' @title Survival Logistic-Hazard Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.loghaz
#'
#' @template class_learner
#' @templateVar id surv.loghaz
#' @templateVar caller loghaz
#'
#' @details
#' Custom nets can be used in this learner either using the
#'  [survivalmodels::build_pytorch_net] utility function or using `torch` via \CRANpkg{reticulate}.
#'  The number of output channels depends on the number of discretised time-points, i.e.
#'  the parameters `cuts` or `cutpoints`.
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
          ParamDbl$new("frac", default = 0, lower = 0, upper = 1, tags = "train"),
          ParamInt$new("cuts", default = 10L, lower = 1L, tags = "train"),
          ParamUty$new("cutpoints", tags = "train"),
          ParamFct$new("scheme",
            default = "equidistant", levels = c("equidistant", "quantiles"),
            tags = "train"),
          ParamDbl$new("cut_min", default = 0, lower = 0, tags = "train"),
          ParamUty$new("num_nodes", default = c(32L, 32L), tags = "train"),
          ParamLgl$new("batch_norm", default = TRUE, tags = "train"),
          ParamDbl$new("dropout", lower = 0, upper = 1, tags = "train"),
          ParamFct$new("activation",
            default = "relu",
            levels = c(
              "celu", "elu", "gelu", "glu", "hardshrink", "hardsigmoid", "hardswish",
              "hardtanh", "relu6", "leakyrelu", "logsigmoid", "logsoftmax", "prelu",
              "rrelu", "relu", "selu", "sigmoid", "softmax", "softmax2d", "softmin",
              "softplus", "softshrink", "softsign", "tanh", "tanhshrink", "threshold"),
            tags = "train"),
          ParamUty$new("custom_net", tags = "train"),
          ParamUty$new("device", tags = "train"),
          ParamDbl$new("shrink", default = 0, lower = 0, tags = "train"),
          ParamFct$new("optimizer",
            default = "adam",
            levels = c(
              "adadelta", "adagrad", "adam", "adamax", "adamw", "asgd", "rmsprop", "rprop",
              "sgd", "sparse_adam"), tags = "train"),
          ParamDbl$new("rho", default = 0.9, tags = "train"),
          ParamDbl$new("eps", default = 1e-8, tags = "train"),
          ParamDbl$new("lr", default = 1, tags = "train"),
          ParamDbl$new("weight_decay", default = 0, tags = "train"),
          ParamDbl$new("learning_rate", default = 1e-2, tags = "train"),
          ParamDbl$new("lr_decay", default = 0, tags = "train"),
          ParamUty$new("betas", default = c(0.9, 0.999), tags = "train"),
          ParamLgl$new("amsgrad", default = FALSE, tags = "train"),
          ParamDbl$new("lambd", default = 1e-4, lower = 0, tags = "train"),
          ParamDbl$new("alpha", default = 0.75, lower = 0, tags = "train"),
          ParamDbl$new("t0", default = 1e6, tags = "train"),
          ParamDbl$new("momentum", default = 0, tags = "train"),
          ParamLgl$new("centered", default = TRUE, tags = "train"),
          ParamUty$new("etas", default = c(0.5, 1.2), tags = "train"),
          ParamUty$new("step_sizes", default = c(1e-6, 50), tags = "train"),
          ParamDbl$new("dampening", default = 0, tags = "train"),
          ParamLgl$new("nesterov", default = FALSE, tags = "train"),
          ParamInt$new("batch_size", default = 256L, tags = c("train", "predict")),
          ParamInt$new("epochs", lower = 1L, upper = Inf, default = 1, tags = "train"),
          ParamLgl$new("verbose", default = TRUE, tags = "train"),
          ParamInt$new("num_workers", default = 0L, tags = c("train", "predict")),
          ParamLgl$new("shuffle", default = TRUE, tags = "train"),
          ParamLgl$new("best_weights", default = FALSE, tags = "train"),
          ParamLgl$new("early_stopping", default = FALSE, tags = "train"),
          ParamDbl$new("min_delta", default = 0, tags = "train"),
          ParamInt$new("patience", default = 10, tags = "train"),
          ParamLgl$new("interpolate", default = FALSE, tags = "predict"),
          ParamFct$new("inter_scheme",
            default = "const_hazard",
            levels = c("const_hazard", "const_pdf"), tags = "predict"),
          ParamInt$new("sub", default = 10L, lower = 1L, tags = "predict")
        )
      )

      ps$add_dep("rho", "optimizer", CondEqual$new("adadelta"))
      ps$add_dep("eps", "optimizer", CondAnyOf$new(c(
        "adadelta", "adagrad", "adam", "adamax",
        "adamw", "rmsprop", "sparse_adam")))
      ps$add_dep("lr", "optimizer", CondEqual$new("adadelta"))
      ps$add_dep(
        "weight_decay", "optimizer",
        CondAnyOf$new(c(
          "adadelta", "adagrad", "adam", "adamax", "adamw",
          "asgd", "rmsprop", "sgd")))
      ps$add_dep(
        "learning_rate", "optimizer",
        CondAnyOf$new(c(
          "adagrad", "adam", "adamax", "adamw", "asgd", "rmsprop", "rprop",
          "sgd", "sparse_adam")))
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
      ps$add_dep("inter_scheme", "interpolate", CondEqual$new(TRUE))

      super$initialize(
        id = "surv.loghaz",
        feature_types = c("integer", "numeric"),
        predict_types = c("crank", "distr"),
        param_set = ps,
        man = "mlr3extralearners::surv.loghaz",
        packages = c("survivalmodels", "distr6", "reticulate")
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      mlr3misc::invoke(
        survivalmodels::loghaz,
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

.extralrns_dict$add("surv.loghaz", LearnerSurvLogisticHazard)
