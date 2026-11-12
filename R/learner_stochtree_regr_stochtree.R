#' @title Stochastic Tree Ensemble BART Regression Learner
#' @author be-marc
#' @name mlr_learners_regr.stochtree
#'
#' @description
#' Bayesian additive regression trees (BART) sampled with MCMC,
#' optionally warm-started with the grow-from-root algorithm of accelerated BART (XBART).
#' Calls `stochtree::bart()` from \CRANpkg{stochtree}.
#'
#' The `"se"` predict type returns the posterior standard deviation of the conditional mean.
#' Leaf regression bases and random effects are not supported.
#'
#' @section Custom mlr3 parameters:
#' - `stochtree::bart()` takes most of its parameters in the lists `general_params`, `mean_forest_params`,
#'   and `variance_forest_params`.
#'   The entries of these lists are exposed as individual hyperparameters.
#'   The entries of `general_params` and `mean_forest_params` keep their names.
#'   The entries of `variance_forest_params` whose names clash with those of the mean forest are prefixed with
#'   `variance_`, i.e., `variance_num_trees`, `variance_alpha`, `variance_beta`, `variance_min_samples_leaf`,
#'   `variance_max_depth`, `variance_keep_vars`, `variance_drop_vars`, and `variance_num_features_subsample`.
#' - `random_seed`: If not set, the seed of the C++ random number generator is drawn from R's random number generator,
#'   so that results are reproducible with `set.seed()`.
#'   Upstream seeds from `std::random_device` in this case.
#' - `observation_weights` is not exposed as a hyperparameter.
#'   Observation weights are taken from the task instead, see the `weights` property.
#'
#' @section Saving a Learner:
#' The fitted model holds pointers to C++ objects.
#' In order to save a trained learner, or to use it with encapsulation or parallelization,
#' the model is marshaled to a JSON string with `stochtree::saveBARTModelToJsonString()`.
#' Call `$marshal()` before saving the learner with `saveRDS()` and `$unmarshal()` after reading it.
#'
#' @templateVar id regr.stochtree
#' @template learner
#'
#' @references
#' `r format_bib("chipman2010bart", "he2023stochastic", "herren2026stochtree")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrStochtree = R6Class("LearnerRegrStochtree",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      check_vars = function(x) {
        if (is.null(x) || is.character(x)) TRUE else check_integerish(x, lower = 1, any.missing = FALSE)
      }

      param_set = ps(
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
        random_seed = p_int(lower = 0L, tags = "train"),
        keep_burnin = p_lgl(default = FALSE, tags = "train"),
        keep_gfr = p_lgl(default = FALSE, tags = "train"),
        keep_every = p_int(lower = 1L, default = 1L, tags = "train"),
        num_chains = p_int(lower = 1L, default = 1L, tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train"),
        num_threads = p_int(lower = 1L, default = 1L, tags = c("train", "threads")),
        # mean_forest_params
        num_trees = p_int(lower = 0L, default = 200L, tags = "train"),
        alpha = p_dbl(lower = 0, upper = 1, default = 0.95, tags = "train"),
        beta = p_dbl(lower = 0, default = 2, tags = "train"),
        min_samples_leaf = p_int(lower = 1L, default = 5L, tags = "train"),
        max_depth = p_int(lower = -1L, default = 10L, tags = "train"),
        sample_sigma2_leaf = p_lgl(default = TRUE, tags = "train"),
        sigma2_leaf_init = p_dbl(lower = 0, tags = "train"),
        sigma2_leaf_shape = p_dbl(lower = 0, default = 3, tags = "train"),
        sigma2_leaf_scale = p_dbl(lower = 0, tags = "train"),
        keep_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        drop_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        num_features_subsample = p_int(lower = 1L, tags = "train"),
        # variance_forest_params
        variance_num_trees = p_int(lower = 0L, default = 0L, tags = "train"),
        variance_alpha = p_dbl(lower = 0, upper = 1, default = 0.95, tags = "train"),
        variance_beta = p_dbl(lower = 0, default = 2, tags = "train"),
        variance_min_samples_leaf = p_int(lower = 1L, default = 5L, tags = "train"),
        variance_max_depth = p_int(lower = -1L, default = 10L, tags = "train"),
        leaf_prior_calibration_param = p_dbl(lower = 0, default = 1.5, tags = "train"),
        var_forest_leaf_init = p_dbl(tags = "train"),
        var_forest_prior_shape = p_dbl(lower = 0, tags = "train"),
        var_forest_prior_scale = p_dbl(lower = 0, tags = "train"),
        variance_keep_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        variance_drop_vars = p_uty(default = NULL, custom_check = check_vars, tags = "train"),
        variance_num_features_subsample = p_int(lower = 1L, tags = "train")
      )

      super$initialize(
        id = "regr.stochtree",
        packages = c("mlr3extralearners", "stochtree"),
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "se"),
        param_set = param_set,
        properties = c("weights", "marshal"),
        man = "mlr3extralearners::mlr_learners_regr.stochtree",
        label = "Stochastic Tree Ensemble BART"
      )
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

      top = c("num_gfr", "num_burnin", "num_mcmc")
      general = c("cutpoint_grid_size", "standardize", "sample_sigma2_global", "sigma2_global_init",
        "sigma2_global_shape", "sigma2_global_scale", "variable_weights", "random_seed", "keep_burnin", "keep_gfr",
        "keep_every", "num_chains", "verbose", "num_threads")
      variance = c(grep("^variance_", names(pars), value = TRUE), "leaf_prior_calibration_param",
        "var_forest_leaf_init", "var_forest_prior_shape", "var_forest_prior_scale")

      general_params = pars[names(pars) %in% general]
      general_params$random_seed = general_params$random_seed %??% sample.int(.Machine$integer.max, 1L)
      variance_forest_params = pars[names(pars) %in% variance]
      names(variance_forest_params) = sub("^variance_", "", names(variance_forest_params))
      mean_forest_params = pars[names(pars) %nin% c(top, general, variance)]

      invoke(
        stochtree::bart,
        X_train = stochtree_data(task$data(cols = task$feature_names)),
        y_train = task$truth(),
        observation_weights = private$.get_weights(task),
        general_params = general_params,
        mean_forest_params = mean_forest_params,
        variance_forest_params = variance_forest_params,
        .args = pars[names(pars) %in% top]
      )
    },

    .predict = function(task) {
      newdata = stochtree_data(ordered_features(task, self))

      if (self$predict_type == "response") {
        response = invoke(predict, self$model, X = newdata, type = "mean", terms = "y_hat")
        list(response = as.numeric(response))
      } else {
        draws = invoke(predict, self$model, X = newdata, type = "posterior", terms = "y_hat")
        list(response = rowMeans(draws), se = apply(draws, 1L, sd))
      }
    }
  )
)

.extralrns_dict$add("regr.stochtree", LearnerRegrStochtree)
