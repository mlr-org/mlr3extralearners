#' @title TabFM Regression Learner
#' @author be-marc
#' @name mlr_learners_regr.tabfm
#'
#' @inherit mlr_learners_classif.tabfm description
#'
#' @templateVar class LearnerRegrTabFM
#' @template sections_tabfm
#'
#' @section Custom mlr3 parameters:
#'
#' - `backend` selects the computational backend, either `"jax"` or `"pytorch"`.
#'   It also determines which pre-trained weights are downloaded and which Python packages are installed.
#'
#' - `device` is only used by the `"pytorch"` backend and is passed as a string to the model loader,
#'   e.g., `"cpu"` or `"cuda"`.
#'   The `"jax"` backend ignores this parameter and selects the device automatically.
#'
#' - `norm_methods` accepts a single string or a character vector with values from
#'   `"none"`, `"power"`, `"quantile"`, `"quantile_rtdl"`, and `"robust"`.
#'
#' - `n_feature_crosses` and `n_svd_features` accept either a non-negative integer or the string `"sqrt"`.
#'
#' - `cache_context` is only supported by the `"pytorch"` backend.
#'
#' - `random_state` accepts either an integer or the special value `"None"`
#'   which corresponds to `None` in Python.
#'
#' @templateVar id regr.tabfm
#' @template learner
#'
#' @inherit mlr_learners_classif.tabfm references
#'
#' @template seealso_learner
#' @export
LearnerRegrTabFM = R6Class("LearnerRegrTabFM",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        backend = p_fct(c("jax", "pytorch"), init = "pytorch", tags = "train"),
        device = p_uty(tags = "train", custom_check = check_string),
        n_estimators = p_int(lower = 1L, default = 32L, tags = "train"),
        norm_methods = p_uty(tags = "train", custom_check = function(x) {
          check_subset(x, c("none", "power", "quantile", "quantile_rtdl", "robust"))
        }),
        feat_shuffle_method = p_fct(c("random", "none"), default = "random", tags = "train"),
        permute_categorical = p_lgl(default = FALSE, tags = "train"),
        outlier_threshold = p_dbl(default = 4.0, tags = "train"),
        max_num_features = p_int(lower = 1L, default = 500L, special_vals = list("None"), tags = "train"),
        max_num_rows = p_int(lower = 1L, special_vals = list("None"), tags = "train"),
        use_amp = p_lgl(default = TRUE, tags = "train"),
        batch_size = p_int(lower = 1L, default = 1L, special_vals = list("None"), tags = "train"),
        random_state = p_int(default = 42L, special_vals = list("None"), tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train"),
        cat_encoder_mode = p_fct(c("appearance", "frequency"), default = "appearance", tags = "train"),
        num_folds_for_cv = p_int(lower = 2L, default = 5L, tags = "train"),
        n_feature_crosses = p_uty(default = 0L, tags = "train", custom_check = function(x) {
          if (identical(x, "sqrt") || test_int(x, lower = 0)) TRUE else "Must be a non-negative integer or 'sqrt'"
        }),
        n_svd_features = p_uty(default = 0L, tags = "train", custom_check = function(x) {
          if (identical(x, "sqrt") || test_int(x, lower = 0)) TRUE else "Must be a non-negative integer or 'sqrt'"
        }),
        total_svd_pool = p_int(lower = 1L, special_vals = list("None"), tags = "train"),
        enable_nnls = p_lgl(default = FALSE, tags = "train"),
        nnls_beta = p_dbl(default = 0.75, tags = "train"),
        min_rows_for_single_val_split = p_int(lower = 0L, default = 2000L, tags = "train"),
        cache_context = p_lgl(default = FALSE, tags = "train"),
        maybe_quantize_kv_cache = p_lgl(default = TRUE, tags = "train"),
        keep_cache_on_device = p_lgl(default = TRUE, tags = "train")
      )

      super$initialize(
        id = "regr.tabfm",
        feature_types = c("integer", "numeric", "logical", "character", "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        packages = "reticulate",
        properties = c("missings", "marshal"),
        label = "TabFM Regressor",
        man = "mlr3extralearners::mlr_learners_regr.tabfm"
      )
    },
    #' @description
    #' Marshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::marshal_model()`][mlr3::marshaling()].
    marshal = function(...) {
      learner_marshal(.learner = self, ...)
    },
    #' @description
    #' Unmarshal the learner's model.
    #' @param ... (any)\cr
    #'   Additional arguments passed to [`mlr3::unmarshal_model()`][mlr3::marshaling()].
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
      backend = pars$backend %??% "pytorch"
      device = pars$device
      model = tabfm_load_model(pars, "regression")
      pars$backend = NULL
      pars$device = NULL
      pars = tabfm_convert_pars(pars)

      tabfm = reticulate::import("tabfm")

      # pass a data.frame so that tabfm infers categorical columns and imputes missing values;
      # a plain numeric matrix would bypass tabfm's preprocessing pipeline and reject NaNs
      x_py = reticulate::r_to_py(as.data.frame(task$data(cols = task$feature_names)))
      y_py = reticulate::r_to_py(task$truth())

      pars$model = model
      regressor = mlr3misc::invoke(tabfm$TabFMRegressor, .args = pars)
      fitted = mlr3misc::invoke(regressor$fit, X = x_py, y = y_py)

      structure(
        list(fitted = fitted, backend = backend, device = device, model_type = "regression"),
        class = "tabfm_model"
      )
    },

    .predict = function(task) {
      reticulate::import("tabfm")
      model = self$model$fitted

      x_py = reticulate::r_to_py(as.data.frame(task$data(cols = task$feature_names)))

      response = mlr3misc::invoke(model$predict, X = x_py)
      response = reticulate::py_to_r(response)
      list(response = response)
    }
  )
)

.extralrns_dict$add("regr.tabfm", LearnerRegrTabFM)
