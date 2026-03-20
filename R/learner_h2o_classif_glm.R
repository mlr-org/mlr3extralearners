#' @title Classification H2O GLM Learner
#' @author awinterstetter
#' @name mlr_learners_classif.h2o.glm
#'
#' @description
#' Generalized linear classification model.
#' Calls [h2o::h2o.glm()] from package \CRANpkg{h2o} with `family` always set to `"binomial"`.
#'
#' @templateVar id classif.h2o.glm
#' @template learner
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifH2OGLM = R6Class("LearnerClassifH2OGLM", inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        alpha = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
        balance_classes = p_lgl(default = FALSE, tags = "train"),
        beta_constraints = p_uty(default = NULL, tags = "train"),
        beta_epsilon = p_dbl(lower = 0, default = 0.0001, tags = "train"),
        build_null_model = p_lgl(default = FALSE, tags = "train"),
        calc_like = p_lgl(default = FALSE, tags = "train"),
        checkpoint = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        class_sampling_factors = p_uty(default = NULL, depends = quote(balance_classes == TRUE), tags = "train"),
        cold_start = p_lgl(default = FALSE, tags = "train"),
        compute_p_values = p_lgl(default = FALSE, depends = quote(solver == "IRLSM" && lambda_search == FALSE && alpha == 0 && lambda == 0), tags = "train"),
        early_stopping = p_lgl(default = TRUE, tags = "train"),
        export_checkpoints_dir = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        gainslift_bins = p_int(lower = -1L, default = -1L, tags = "train"),
        generate_scoring_history = p_lgl(default = FALSE, tags = "train"),
        generate_variable_inflation_factors = p_lgl(default = FALSE, tags = "train"),
        gradient_epsilon = p_dbl(lower = -1, default = -1, tags = "train"),
        HGLM = p_lgl(default = FALSE, tags = "train"),
        ignore_const_cols = p_lgl(default = TRUE, tags = "train"),
        interactions = p_uty(default = NULL, tags = "train"),
        interaction_pairs = p_uty(default = NULL, tags = "train"),
        intercept = p_lgl(default = TRUE, tags = "train"),
        lambda = p_dbl(lower = 0, default = 1e-5, tags = "train"),
        lambda_min_ratio = p_dbl(lower = 0, upper = 1, default = -1, special_vals = list(-1), depends = quote(lambda_search == TRUE), tags = "train"),
        lambda_search = p_lgl(default = FALSE, tags = "train"),
        link = p_fct(levels = c("family_default", "logit"), default = "logit", tags = "train"),
        max_active_predictors = p_int(lower = 1L, default = -1L, special_vals = list(-1L), tags = "train"),
        max_after_balance_size = p_dbl(lower = 0, default = 5, depends = quote(balance_classes == TRUE), tags = "train"),
        max_iterations = p_int(lower = 0L, default = -1L, special_vals = list(-1L), tags = "train"),
        max_runtime_secs = p_dbl(lower = 0, default = 0, tags = "train"),
        missing_values_handling = p_fct(levels = c("MeanImputation", "Skip", "PlugValues"), default = "MeanImputation", tags = "train"),
        nlambdas = p_int(lower = 1L, default = -1L, special_vals = list(-1L), depends = quote(lambda_search == TRUE), tags = "train"),
        non_negative = p_lgl(default = FALSE, tags = "train"),
        objective_epsilon = p_dbl(lower = 0, default = -1, special_vals = list(-1), tags = "train"),
        obj_reg = p_dbl(lower = 0, default = -1, special_vals = list(-1), tags = "train"),
        plug_values = p_uty(default = NULL, depends = quote(missing_values_handling == "PlugValues"), tags = "train"),
        prior = p_dbl(lower = -1, default = -1, tags = "train"),
        random_columns = p_uty(default = NULL, depends = quote(HGLM == TRUE), tags = "train"),
        remove_collinear_columns = p_lgl(default = FALSE, tags = "train"),
        score_each_iteration = p_lgl(default = FALSE, tags = "train"),
        score_iteration_interval = p_int(default = -1L, tags = "train"),
        seed = p_int(default = -1L, tags = "train"),
        solver = p_fct(levels = c("AUTO", "IRLSM", "L_BFGS", "COORDINATE_DESCENT", "COORDINATE_DESCENT_NAIVE"), default = "AUTO", tags = "train"),
        standardize = p_lgl(default = TRUE, tags = "train"),
        startval = p_uty(default = NULL, tags = "train"),
        stopping_metric = p_fct(levels = c("AUTO", "logloss", "AUC", "AUCPR", "lift_top_group", "misclassification", "mean_per_class_error"), default = "AUTO", tags = "train"),
        stopping_rounds = p_int(lower = 0L, default = 0L, tags = "train"),
        stopping_tolerance = p_dbl(lower = 0, default = 0.001, tags = "train")
      )

      super$initialize(
        id = "classif.h2o.glm",
        packages = c("mlr3extralearners", "h2o"),
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("weights", "twoclass", "missings"),
        man = "mlr3extralearners::mlr_learners_classif.h2o.glm",
        label = "H2O GLM"
      )
    }
  ),

  private = list(

    .train = function(task) {

      if (!inherits(try(h2o::h2o.getConnection(), silent = TRUE), "H2OConnection")) {
        invisible(capture.output(h2o::h2o.init(ip = "127.0.0.1")))
      }

      pars = self$param_set$get_values(tags = "train")

      # enforce that default alpha = 0 when solver is L_BFGS
      if (!("alpha" %in% names(pars)) && ("solver" %in% names(pars))) {
        if (pars$solver == "L_BFGS") {
          pars$alpha = 0
        }
      }

      data = task$data()

      weights = private$.get_weights(task)
      if (!is.null(weights)) {
        data$.mlr_weights = weights
        pars$weights_column = ".mlr_weights"
      }

      pars$family = "binomial"
      training_frame = h2o::h2o.no_progress(h2o::as.h2o(data))

      h2o::h2o.no_progress(invoke(
          .f = h2o::h2o.glm,
          y = task$target_names,
          x = task$feature_names,
          training_frame = training_frame,
          .args = pars
      ))
    },

    .predict = function(task) {

      if (!inherits(try(h2o::h2o.getConnection(), silent = TRUE), "H2OConnection")) {
        invisible(capture.output(h2o::h2o.init(ip = "127.0.0.1")))
      }

      newdata = h2o::h2o.no_progress(h2o::as.h2o(ordered_features(task, self)))

      pred = h2o::h2o.no_progress(h2o::h2o.predict(self$model, newdata = newdata))

      response = factor(as.vector(pred$predict), levels = task$class_names)

      if (self$predict_type == "response") {
        return(list(response = response))
      }

      prob = as.matrix(pred[, -1L])
      prob_names = names(pred)[-1L]

      # H2O-predict may return probability columns as p0, p1, etc. for integer-like class labels, so we need to strip the p to create final prob-table correctly
      int_response = grepl("^[[:digit:]]+$", as.character(as.vector(pred$predict)))
      p_cols = grepl("^p[[:digit:]]+$", prob_names)
      if (any(int_response) && any(p_cols)) {
        prob_names[p_cols] = sub("^p", "", prob_names[p_cols])
      }

      colnames(prob) = prob_names
      prob = prob[, task$class_names, drop = FALSE]

      list(prob = prob, response = response)
    }
  )
)

.extralrns_dict$add("classif.h2o.glm", LearnerClassifH2OGLM)
