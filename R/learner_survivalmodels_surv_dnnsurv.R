#' @title Survival DNNSurv Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.dnnsurv
#'
#' @description
#' Fits a neural network based on pseudo-conditional survival probabilities.
#' Calls [survivalmodels::dnnsurv()] from package 'survivalmodels'.
#'
#' @section Prediction types:
#' This learner returns two prediction types:
#' 1. `distr`: a survival matrix in two dimensions, where observations are
#' represented in rows and time points in columns.
#' Calculated using the internal [survivalmodels::predict.dnnsurv()] function.
#' 2. `crank`: the expected mortality using [survivalmodels::surv_to_risk()].
#'
#' @template learner
#' @templateVar id surv.dnnsurv
#'
#' @template install_survivalmodels
#'
#' @details
#' Custom nets can be used in this learner either using the
#'  [survivalmodels::build_keras_net] utility function or using \CRANpkg{keras}.
#'  The number of output channels should be of length `1` and number of input channels is
#'  the number of features plus number of cuts.
#'
#' @section Initial parameter values:
#' - `verbose` is initialized to 0.
#'
#' @references
#' `r format_bib("zhao2019dnnsurv")`
#'
#' @template seealso_learner
#' @export
LearnerSurvDNNSurv = R6Class("LearnerSurvDNNSurv",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(
        cuts = p_int(default = 5, lower = 1, tags = "train"),
        cutpoints = p_uty(tags = "train"),
        custom_model = p_uty(tags = "train"),
        optimizer = p_fct(default = "adam",
          levels = c("adadelta", "adagrad", "adamax", "adam", "nadam", "rmsprop", "sgd"),
          tags = "train"),
        lr = p_dbl(default = 0.02, lower = 0, tags = "train"),
        beta_1 = p_dbl(default = 0.9, lower = 0, upper = 1, tags = "train"),
        beta_2 = p_dbl(default = 0.999, lower = 0, upper = 1, tags = "train"),
        epsilon = p_dbl(lower = 0, tags = "train"),
        decay = p_dbl(default = 0, lower = 0, tags = "train"),
        clipnorm = p_dbl(tags = "train"),
        clipvalue = p_dbl(tags = "train"),
        momentum = p_dbl(default = 0, lower = 0, tags = "train"),
        nesterov = p_lgl(default = FALSE, tags = "train"),
        loss_weights = p_uty(tags = "train"),
        weighted_metrics = p_uty(tags = "train"),
        early_stopping = p_lgl(default = FALSE, tags = "train"),
        min_delta = p_dbl(default = 0, lower = 0, tags = "train"),
        patience = p_int(default = 0L, lower = 0, tags = "train"),
        verbose = p_int(default = 0L, lower = 0, upper = 2, tags = c("train", "predict")),
        baseline = p_dbl(tags = "train"),
        restore_best_weights = p_lgl(default = FALSE, tags = "train"),
        batch_size = p_int(default = 32L, lower = 1, tags = c("train", "predict")),
        epochs = p_int(default = 10L, lower = 1, tags = "train"),
        validation_split = p_dbl(default = 0, lower = 0, upper = 1, tags = "train"),
        shuffle = p_lgl(default = TRUE, tags = "train"),
        sample_weight = p_uty(tags = "train"),
        initial_epoch = p_int(default = 0L, lower = 0, tags = "train"),
        steps_per_epoch = p_int(lower = 1, tags = "train"),
        validation_steps = p_int(lower = 1, tags = "train"),
        steps = p_int(lower = 0, tags = "predict"),
        callbacks = p_uty(tags = "predict"),
        rho = p_dbl(default = 0.95, tags = "train"),
        global_clipnorm = p_dbl(tags = "train"),
        use_ema = p_lgl(tags = "train"),
        ema_momentum = p_dbl(default = 0.99, tags = "train"),
        ema_overwrite_frequency = p_dbl(tags = "train"),
        jit_compile = p_lgl(default = TRUE, tags = "train"),
        initial_accumultator_value = p_dbl(default = 0.1, tags = "train"),
        amsgrad = p_lgl(default = FALSE, tags = "train"),
        lr_power = p_dbl(default = -0.5, tags = "train"),
        l1_regularization_strength = p_dbl(lower = 0, default = 0, tags = "train"),
        l2_regularization_strength = p_dbl(lower = 0, default = 0, tags = "train"),
        l2_shrinkage_regularization_strength = p_dbl(lower = 0, default = 0, tags = "train"),
        beta = p_dbl(default = 0, tags = "train"),
        centered = p_lgl(default = FALSE, tags = "train")
      )

      ps$add_dep("lr", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam", "rmsprop", "sgd")))
      ps$add_dep("beta_1", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam")))
      ps$add_dep("beta_2", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam")))
      ps$add_dep("epsilon", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam")))
      ps$add_dep("decay", "optimizer", CondAnyOf$new(c("adamax", "adam", "sgd")))
      ps$add_dep("clipnorm", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam", "sgd")))
      ps$add_dep("clipvalue", "optimizer", CondAnyOf$new(c("adamax", "adam", "nadam", "sgd")))
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
        packages = c("mlr3extralearners", "survivalmodels", "keras", "pseudo", "tensorflow", "distr6"),
        label = "Neural Network"
      )
    }
  ),

  private = list(
    .train = function(task) {
      assert_python_packages(c("keras", "tensorflow"), python_version = "3.10")

      pars = self$param_set$get_values(tags = "train")
      invoke(
        survivalmodels::dnnsurv,
        data = data.table::setDF(task$data()),
        time_variable = task$target_names[1L],
        status_variable = task$target_names[2L],
        .args = pars
      )

    },

    .predict = function(task) {
      assert_python_packages(c("keras", "tensorflow"), python_version = "3.10")

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

.extralrns_dict$add("surv.dnnsurv", LearnerSurvDNNSurv)
