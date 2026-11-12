#' @title Stochastic Tree Ensemble Bayesian Causal Forest Regression Learner
#' @author be-marc
#' @name mlr_learners_regr.stochtree_bcf
#'
#' @description
#' Bayesian causal forest (BCF) sampled with MCMC,
#' optionally warm-started with the grow-from-root algorithm of accelerated BCF (XBCF).
#' Calls `stochtree::bcf()` from \CRANpkg{stochtree}.
#'
#' The model decomposes the outcome into a prognostic forest and a treatment effect forest,
#' i.e., `y = mu(x) + tau(x) * z`, where `z` is the treatment.
#' As mlr3 has no task type for causal inference,
#' the treatment is a feature of the regression task that is selected with the `treatment` parameter.
#' The learner predicts the outcome given the covariates and the observed treatment,
#' so resampling and tuning evaluate the outcome prediction and not the treatment effect.
#' The estimated conditional average treatment effect is returned by the `$treatment_effect()` method.
#'
#' The `"se"` predict type returns the posterior standard deviation of the conditional mean.
#' Propensity scores are estimated internally by `stochtree::bcf()`.
#' Random effects are not supported.
#'
#' @section Custom mlr3 parameters:
#' - `treatment`: Name of the feature that contains the treatment.
#'   The feature must be logical, integer, or numeric, and is passed as `Z_train` to `stochtree::bcf()`.
#'   All other features are used as covariates.
#'   This parameter is required.
#' - `stochtree::bcf()` takes most of its parameters in the lists `general_params`, `prognostic_forest_params`,
#'   `treatment_effect_forest_params`, and `variance_forest_params`.
#'   The entries of these lists are exposed as individual hyperparameters.
#'   The entries of `general_params` keep their names.
#'   The entries of the forest lists that occur in more than one list are prefixed with `prognostic_`, `treatment_`,
#'   and `variance_`, e.g., `prognostic_num_trees`, `treatment_num_trees`, and `variance_num_trees`.
#'   All other entries of the forest lists keep their names.
#' - `random_seed`: If not set, the seed of the C++ random number generator is drawn from R's random number generator.
#'   Upstream seeds from `std::random_device` in this case.
#'
#' @section Reproducibility:
#' `stochtree::bcf()` estimates the propensity scores with an internal BART model that is always seeded from
#' `std::random_device`.
#' Results are therefore only reproducible with `set.seed()` or `random_seed` when `propensity_covariate` is `"none"`,
#' in which case no propensity model is fitted.
#' - `observation_weights` is not exposed as a hyperparameter.
#'   Observation weights are taken from the task instead, see the `weights` property.
#'
#' @inheritSection mlr_learners_regr.stochtree Saving a Learner
#'
#' @templateVar id regr.stochtree_bcf
#' @template learner
#'
#' @references
#' `r format_bib("hahn2020bayesian", "krantsevich2023stochastic", "herren2026stochtree")`
#'
#' @template seealso_learner
#' @template example_stochtree_bcf
#' @export
LearnerRegrStochtreeBCF = R6Class("LearnerRegrStochtreeBCF",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      check_vars = function(x) {
        if (is.null(x) || is.character(x)) TRUE else check_integerish(x, lower = 1, any.missing = FALSE)
      }

      param_set = ps(
        treatment = p_uty(custom_check = check_string, tags = c("train", "predict", "required")),
        num_gfr = p_int(lower = 0L, default = 5L, tags = "train"),
        num_burnin = p_int(lower = 0L, default = 0L, tags = "train"),
        num_mcmc = p_int(lower = 0L, default = 100L, tags = "train"),
        # general_params
        cutpoint_grid_size = p_int(lower = 1L, default = 100L, tags = "train"),
        standardize = p_lgl(default = TRUE, tags = "train"),
        sample_sigma2_global = p_lgl(default = TRUE, tags = "train"),
        sigma2_global_init = p_dbl(lower = 0, tags = "train"),
        sigma2_global_shape = p_dbl(lower = 0, default = 0, tags = "train"),
        sigma2_global_scale = p_dbl(lower = 0, default = 0, tags = "train"),
        variable_weights = p_uty(
          default = NULL,
          custom_check = function(x) check_numeric(x, lower = 0, any.missing = FALSE, null.ok = TRUE),
          tags = "train"
        ),
        propensity_covariate = p_fct(
          c("none", "prognostic", "treatment_effect", "both"),
          default = "prognostic",
          tags = "train"
        ),
        adaptive_coding = p_lgl(default = FALSE, tags = "train"),
        control_coding_init = p_dbl(default = -0.5, tags = "train"),
        treated_coding_init = p_dbl(default = 0.5, tags = "train"),
        random_seed = p_int(lower = 0L, tags = "train"),
        keep_burnin = p_lgl(default = FALSE, tags = "train"),
        keep_gfr = p_lgl(default = FALSE, tags = "train"),
        keep_every = p_int(lower = 1L, default = 1L, tags = "train"),
        num_chains = p_int(lower = 1L, default = 1L, tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train"),
        num_threads = p_int(lower = 1L, default = 1L, tags = c("train", "threads")),
        # prognostic_forest_params
        prognostic_num_trees = p_int(lower = 0L, default = 250L, tags = "train"),
        prognostic_alpha = p_dbl(lower = 0, upper = 1, default = 0.95, tags = "train"),
        prognostic_beta = p_dbl(lower = 0, default = 2, tags = "train"),
        prognostic_min_samples_leaf = p_int(lower = 1L, default = 5L, tags = "train"),
        prognostic_max_depth = p_int(lower = -1L, default = 10L, tags = "train"),
        prognostic_sample_sigma2_leaf = p_lgl(default = TRUE, tags = "train"),
        prognostic_sigma2_leaf_init = p_dbl(lower = 0, tags = "train"),
        prognostic_sigma2_leaf_shape = p_dbl(lower = 0, default = 3, tags = "train"),
        prognostic_sigma2_leaf_scale = p_dbl(lower = 0, tags = "train"),
        prognostic_keep_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        prognostic_drop_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        prognostic_num_features_subsample = p_int(lower = 1L, tags = "train"),
        # treatment_effect_forest_params
        treatment_num_trees = p_int(lower = 0L, default = 100L, tags = "train"),
        treatment_alpha = p_dbl(lower = 0, upper = 1, default = 0.25, tags = "train"),
        treatment_beta = p_dbl(lower = 0, default = 3, tags = "train"),
        treatment_min_samples_leaf = p_int(lower = 1L, default = 5L, tags = "train"),
        treatment_max_depth = p_int(lower = -1L, default = 5L, tags = "train"),
        treatment_sample_sigma2_leaf = p_lgl(default = FALSE, tags = "train"),
        treatment_sigma2_leaf_init = p_dbl(lower = 0, tags = "train"),
        treatment_sigma2_leaf_shape = p_dbl(lower = 0, default = 3, tags = "train"),
        treatment_sigma2_leaf_scale = p_dbl(lower = 0, tags = "train"),
        treatment_keep_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        treatment_drop_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        treatment_num_features_subsample = p_int(lower = 1L, tags = "train"),
        sample_intercept = p_lgl(default = TRUE, tags = "train"),
        tau_0_prior_var = p_dbl(lower = 0, tags = "train"),
        # variance_forest_params
        variance_num_trees = p_int(lower = 0L, default = 0L, tags = "train"),
        variance_alpha = p_dbl(lower = 0, upper = 1, default = 0.95, tags = "train"),
        variance_beta = p_dbl(lower = 0, default = 2, tags = "train"),
        variance_min_samples_leaf = p_int(lower = 1L, default = 5L, tags = "train"),
        variance_max_depth = p_int(lower = -1L, default = 10L, tags = "train"),
        variance_keep_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        variance_drop_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        variance_num_features_subsample = p_int(lower = 1L, tags = "train"),
        leaf_prior_calibration_param = p_dbl(lower = 0, default = 1.5, tags = "train"),
        variance_forest_init = p_dbl(tags = "train"),
        var_forest_prior_shape = p_dbl(lower = 0, tags = "train"),
        var_forest_prior_scale = p_dbl(lower = 0, tags = "train")
      )

      super$initialize(
        id = "regr.stochtree_bcf",
        packages = c("mlr3extralearners", "stochtree"),
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = c("weights", "marshal"),
        man = "mlr3extralearners::mlr_learners_regr.stochtree_bcf",
        label = "Stochastic Tree Ensemble Bayesian Causal Forest"
      )
    },

    #' @description
    #' Estimates the conditional average treatment effect `tau(x)`.
    #' @param task ([mlr3::TaskRegr])\cr
    #'   Task with the same features as the training task.
    #' @param row_ids (`integer()`)\cr
    #'   Rows of the task to estimate the treatment effect for.
    #'   If `NULL` (default), the rows with role `"use"` are used.
    #' @return `numeric()` with the posterior mean of the treatment effect of each row.
    treatment_effect = function(task, row_ids = NULL) {
      task = mlr3::assert_task(mlr3::as_task(task))
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      if (self$marshaled) {
        stopf("The model is marshaled, call `$unmarshal()` first")
      }
      if (!is.null(row_ids)) {
        task = task$clone()$filter(row_ids)
      }
      data = stochtree_bcf_data(ordered_features(task, self), self$param_set$values$treatment)
      as.numeric(invoke(predict, self$model, X = data$x, Z = data$z, type = "mean", terms = "cate"))
    },

    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },
    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::unmarshal_model()`].
    unmarshal = function(...) {
      learner_unmarshal(.learner = self, ...)
    }
  ),

  active = list(
    #' @field marshaled (`logical(1)`)\cr
    #' Whether the learner has been marshaled.
    marshaled = function() {
      learner_marshaled(self)
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = stochtree_bcf_data(task$data(cols = task$feature_names), pars$treatment)

      top = c("num_gfr", "num_burnin", "num_mcmc")
      treatment = c(grep("^treatment_", names(pars), value = TRUE), "sample_intercept", "tau_0_prior_var")
      prognostic = grep("^prognostic_", names(pars), value = TRUE)
      variance = c(grep("^variance_", names(pars), value = TRUE), "leaf_prior_calibration_param",
        "var_forest_prior_shape", "var_forest_prior_scale")

      forest_params = function(ids, prefix) {
        params = pars[names(pars) %in% ids]
        # variance_forest_init is an upstream name and keeps its prefix
        strip = names(params) != "variance_forest_init"
        names(params)[strip] = sub(prefix, "", names(params)[strip])
        params
      }

      general_params = pars[names(pars) %nin% c("treatment", top, treatment, prognostic, variance)]
      general_params$random_seed = general_params$random_seed %??% sample.int(.Machine$integer.max, 1L)

      invoke(
        stochtree::bcf,
        X_train = data$x,
        Z_train = data$z,
        y_train = task$truth(),
        observation_weights = private$.get_weights(task),
        general_params = general_params,
        prognostic_forest_params = forest_params(prognostic, "^prognostic_"),
        treatment_effect_forest_params = forest_params(treatment, "^treatment_"),
        variance_forest_params = forest_params(variance, "^variance_"),
        .args = pars[names(pars) %in% top]
      )
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      data = stochtree_bcf_data(ordered_features(task, self), pars$treatment)

      if (self$predict_type == "response") {
        response = invoke(predict, self$model, X = data$x, Z = data$z, type = "mean", terms = "y_hat")
        list(response = as.numeric(response))
      } else {
        draws = invoke(predict, self$model, X = data$x, Z = data$z, type = "posterior", terms = "y_hat")
        list(response = rowMeans(draws), se = apply(draws, 1L, stats::sd))
      }
    }
  )
)

.extralrns_dict$add("regr.stochtree_bcf", LearnerRegrStochtreeBCF)
