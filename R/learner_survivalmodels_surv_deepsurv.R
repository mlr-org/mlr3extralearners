#' @title Survival DeepSurv Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.deepsurv
#'
#' @description
#' DeepSurv fits a neural network based on the partial likelihood from a Cox PH.
#' Calls [survivalmodels::dnnsurv()] from package 'survivalmodels'.
#'
#' @template learner
#' @templateVar id surv.deepsurv
#'
#' @template install_survivalmodels
#'
#' @references
#' `r format_bib("katzman2018deepsurv")`
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerSurvDeepsurv",
  R6Class("LearnerSurvDeepsurv",
    inherit = mlr3proba::LearnerSurv,

    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {

        ps = ps(
          frac = p_dbl(default = 0, lower = 0, upper = 1, tags = "train"),
          num_nodes = p_uty(default = c(32L, 32L), tags = "train"),
          batch_norm = p_lgl(default = TRUE, tags = "train"),
          dropout = p_dbl(lower = 0, upper = 1, tags = "train"),
          activation = p_fct(default = "relu",
            levels = c("celu", "elu", "gelu", "glu", "hardshrink", "hardsigmoid", "hardswish",
              "hardtanh", "relu6", "leakyrelu", "logsigmoid", "logsoftmax", "prelu",
              "rrelu", "relu", "selu", "sigmoid", "softmax", "softmax2d", "softmin",
              "softplus", "softshrink", "softsign", "tanh", "tanhshrink", "threshold"),
            tags = "train"),
          device = p_uty(tags = "train"),
          optimizer = p_fct(default = "adam",
            levels = c("adadelta", "adagrad", "adam", "adamax", "adamw", "asgd", "rmsprop", "rprop",
              "sgd", "sparse_adam"), tags = "train"),
          rho = p_dbl(default = 0.9, tags = "train"),
          eps = p_dbl(default = 1e-8, tags = "train"),
          lr = p_dbl(default = 1, tags = "train"),
          weight_decay = p_dbl(default = 0, tags = "train"),
          learning_rate = p_dbl(default = 1e-2, tags = "train"),
          lr_decay = p_dbl(default = 0, tags = "train"),
          betas = p_uty(default = c(0.9, 0.999), tags = "train"),
          amsgrad = p_lgl(default = FALSE, tags = "train"),
          lambd = p_dbl(default = 1e-4, lower = 0, tags = "train"),
          alpha = p_dbl(default = 0.75, lower = 0, tags = "train"),
          t0 = p_dbl(default = 1e6, tags = "train"),
          momentum = p_dbl(default = 0, tags = "train"),
          centered = p_lgl(default = TRUE, tags = "train"),
          etas = p_uty(default = c(0.5, 1.2), tags = "train"),
          step_sizes = p_uty(default = c(1e-6, 50), tags = "train"),
          dampening = p_dbl(default = 0, tags = "train"),
          nesterov = p_lgl(default = FALSE, tags = "train"),
          batch_size = p_int(default = 256L, tags = c("train", "predict")),
          epochs = p_int(lower = 1L, upper = Inf, default = 1, tags = "train"),
          verbose = p_lgl(default = TRUE, tags = "train"),
          num_workers = p_int(default = 0L, tags = c("train", "predict", "threads")),
          shuffle = p_lgl(default = TRUE, tags = "train"),
          best_weights = p_lgl(default = FALSE, tags = "train"),
          early_stopping = p_lgl(default = FALSE, tags = "train"),
          min_delta = p_dbl(default = 0, tags = "train"),
          patience = p_int(default = 10, tags = "train")
        )

        ps$add_dep("rho", "optimizer", CondEqual$new("adadelta"))
        ps$add_dep("eps", "optimizer", CondAnyOf$new(c("adadelta", "adagrad", "adam", "adamax",
          "adamw", "rmsprop", "sparse_adam")))
        ps$add_dep("lr", "optimizer", CondEqual$new("adadelta"))
        ps$add_dep("weight_decay", "optimizer",
          CondAnyOf$new(c("adadelta", "adagrad", "adam", "adamax", "adamw",
            "asgd", "rmsprop", "sgd")))
        ps$add_dep("learning_rate", "optimizer",
          CondAnyOf$new(c("adagrad", "adam", "adamax", "adamw", "asgd", "rmsprop", "rprop",
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

        super$initialize(
          id = "surv.deepsurv",
          feature_types = c("integer", "numeric"),
          predict_types = c("crank", "distr"),
          param_set = ps,
          man = "mlr3extralearners::mlr_learners_surv.deepsurv",
          packages = c("mlr3extralearners", "survivalmodels", "distr6", "reticulate"),
          label = "Neural Network"
        )
      }
    ),

    private = list(
      .train = function(task) {

        pars = self$param_set$get_values(tags = "fit")
        invoke(
          survivalmodels::deepsurv,
          data = data.table::setDF(task$data()),
          time_variable = task$target_names[1L],
          status_variable = task$target_names[2L],
          .args = pars
        )

      },

      .predict = function(task) {

        pars = self$param_set$get_values(tags = "predict")
        newdata = ordered_features(task, self)

        pred = invoke(
          predict,
          self$model,
          newdata = newdata,
          distr6 = FALSE,
          type = "all",
          .args = pars
        )

        list(crank = pred$risk, distr = pred$surv)

      }
    )
  )
)

.extralrns_dict$add("surv.deepsurv", function() LearnerSurvDeepsurv$new())
