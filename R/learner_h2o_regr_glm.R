#' @title Generalized Linear Regression H2O Learner
#' @author awinterstetter
#' @name mlr_learners_regr.h2o.glm
#'
#' @description
#' Generalized linear model.
#' Calls [h2o::h2o.glm()] from package \CRANpkg{h2o}.
#'
#' @templateVar id regr.h2o.glm
#' @template learner
#'
#' @section Model family:
#' The `family` parameter is fixed to `"gaussian"`.
#'
#' @section Missing values:
#' H2O GLM supports native missing value handling. By default, `missing_values_handling`
#' is set to `"MeanImputation"` if explicitly set by the user.
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrH2OGLM = R6Class("LearnerRegrH2OGLM",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        # core / optimization
        seed = p_int(default = -1L, tags = "train"),
        ignore_const_cols = p_lgl(default = TRUE, tags = "train"),
        score_each_iteration = p_lgl(default = FALSE, tags = "train"),
        score_iteration_interval = p_int(default = -1L, tags = "train"),
        solver = p_fct(
          levels = c(
            "AUTO", "IRLSM", "L_BFGS", "COORDINATE_DESCENT_NAIVE",
            "COORDINATE_DESCENT", "GRADIENT_DESCENT_LH", "GRADIENT_DESCENT_SQERR"),
          default = "IRLSM",
          tags = "train"
        ),
        alpha = p_uty(default = 0.5, tags = "train"),
        lambda = p_uty(default = 1e-5, tags = "train"),
        lambda_search = p_lgl(default = FALSE, tags = "train"),
        early_stopping = p_lgl(default = TRUE, tags = "train"),
        nlambdas = p_int(lower = 1L, depends = quote(lambda_search == TRUE), tags = "train"),
        standardize = p_lgl(default = TRUE, tags = "train"),
        missing_values_handling = p_fct(
          levels = c("MeanImputation", "Skip", "PlugValues"),
          tags = "train"
        ),
        plug_values = p_uty(
          default = NULL,
          special_vals = list(NULL),
          depends = quote(missing_values_handling == "PlugValues"),
          tags = "train"
        ),
        compute_p_values = p_lgl(default = FALSE, tags = "train"),
        dispersion_parameter_method = p_fct(
          levels = c("deviance", "pearson", "ml"),
          tags = "train"
        ),
        init_dispersion_parameter = p_dbl(default = 1, tags = "train"),
        remove_collinear_columns = p_lgl(default = FALSE, tags = "train"),
        intercept = p_lgl(default = TRUE, tags = "train"),
        non_negative = p_lgl(default = FALSE, tags = "train"),
        max_iterations = p_int(default = 50L, tags = "train"),
        objective_epsilon = p_dbl(default = -1, tags = "train"),
        beta_epsilon = p_dbl(lower = 0, default = 0, tags = "train"),
        gradient_epsilon = p_dbl(default = -1, tags = "train"),
        link = p_fct(
          levels = c("family_default", "identity", "log", "inverse"),
          default = "identity",
          tags = "train"
        ),
        startval = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        calc_like = p_lgl(default = FALSE, tags = "train"),
        cold_start = p_lgl(default = FALSE, tags = "train"),
        lambda_min_ratio = p_dbl(lower = 0, upper = 1, depends = quote(lambda_search == TRUE), tags = "train"),
        beta_constraints = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        max_active_predictors = p_int(default = -1L, tags = "train"),
        interactions = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        interaction_pairs = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        obj_reg = p_dbl(default = -1, tags = "train"),
        stopping_rounds = p_int(lower = 0L, default = 0L, tags = "train"),
        stopping_metric = p_fct(
          levels = c(
            "AUTO", "deviance", "logloss", "MSE", "RMSE", "MAE", "RMSLE", "AUC",
            "AUCPR", "lift_top_group", "misclassification", "mean_per_class_error",
            "custom", "custom_increasing"),
          default = "AUTO",
          tags = "train"
        ),
        stopping_tolerance = p_dbl(lower = 0, default = 0.001, tags = "train"),
        control_variables = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        max_runtime_secs = p_dbl(lower = 0, default = 0, tags = "train"),
        custom_metric_func = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        generate_scoring_history = p_lgl(default = FALSE, tags = "train"),

        # gaussian / dispersion-related options
        dispersion_epsilon = p_dbl(lower = 0, default = 1e-4, tags = "train"),
        max_iterations_dispersion = p_int(lower = 0L, default = 3000L, tags = "train"),
        build_null_model = p_lgl(default = FALSE, tags = "train"),
        fix_dispersion_parameter = p_lgl(default = FALSE, tags = "train"),
        generate_variable_inflation_factors = p_lgl(default = FALSE, tags = "train"),
        dispersion_learning_rate = p_dbl(lower = 0, default = 0.5, tags = "train"),
        influence = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),

        # constraints / advanced optimization
        linear_constraints = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        init_optimal_glm = p_lgl(default = FALSE, tags = "train"),
        separate_linear_beta = p_lgl(default = FALSE, tags = "train"),
        constraint_eta0 = p_dbl(default = 0.1258925, tags = "train"),
        constraint_tau = p_dbl(default = 10, tags = "train"),
        constraint_alpha = p_dbl(default = 0.1, tags = "train"),
        constraint_beta = p_dbl(default = 0.9, tags = "train"),
        constraint_c0 = p_dbl(default = 10, tags = "train"),

        # wrapper-level verbosity control
        quiet = p_lgl(init = TRUE, tags = c("train", "predict"))
      )

      super$initialize(
        id = "regr.h2o.glm",
        packages = "h2o",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = "response",
        param_set = ps,
        properties = c("weights", "missings"),
        man = "mlr3extralearners::mlr_learners_regr.h2o.glm",
        label = "H2O Generalized Linear Model"
      )
    }
  ),

  private = list(
    .train = function(task) {
      conn.up = tryCatch(h2o::h2o.getConnection(), error = function(err) FALSE)
      if (!inherits(conn.up, "H2OConnection")) {
        h2o::h2o.init()
      }

      pars = self$param_set$get_values(tags = "train")
      target = task$target_names
      feature = task$feature_names
      data = task$data()

      weights = private$.get_weights(task)
      if (!is.null(weights)) {
        data$.mlr_weights = weights
        pars$weights_column = ".mlr_weights"
      }

      quiet = pars$quiet
      pars$quiet = NULL

      training_frame = h2o::as.h2o(data)

      train_fun = function() {
        invoke(h2o::h2o.glm,
          y = target,
          x = feature,
          training_frame = training_frame,
          family = "gaussian",
          .args = pars
        )
      }

      if (isTRUE(quiet)) {
        utils::capture.output({
          model = train_fun()
        })
      } else {
        model = train_fun()
      }

      model
    },

    .predict = function(task) {
      conn.up = tryCatch(h2o::h2o.getConnection(), error = function(err) FALSE)
      if (!inherits(conn.up, "H2OConnection")) {
        h2o::h2o.init()
      }

      pars = self$param_set$get_values(tags = "predict")
      quiet = pars$quiet
      pars$quiet = NULL

      newdata = h2o::as.h2o(ordered_features(task, self))

      predict_fun = function() {
        invoke(h2o::h2o.predict,
          object = self$model,
          newdata = newdata,
          .args = pars
        )
      }

      if (isTRUE(quiet)) {
        utils::capture.output({
          pred = predict_fun()
        })
      } else {
        pred = predict_fun()
      }

      list(response = as.data.frame(pred)$predict)
    }
  )
)

.extralrns_dict$add("regr.h2o.glm", LearnerRegrH2OGLM)
