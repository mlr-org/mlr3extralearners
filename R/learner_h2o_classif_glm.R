#' @title Classification H2O GLM Learner
#' @author awinterstetter
#' @name mlr_learners_classif.h2o.glm
#'
#' @description
#' Generalized linear classification model.
#' Calls [h2o::h2o.glm()] from package \CRANpkg{h2o} with `family` always set to `"binomial"`.
#'
#' @section Initial parameter values:
#' - `family`
#'   - Fixed to `"binomial"` by this learner wrapper.
#' - `missing_values_handling`
#'   - H2O default is `"MeanImputation"`.
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
        max_iterations = p_int(lower = 0L, default = 50L, tags = "train"),
        seed = p_int(tags = "train"),
        beta_epsilon = p_dbl(lower = 0, default = 0, tags = "train"),
        objective_epsilon = p_dbl(lower = 0, tags = "train"),
        gradient_epsilon = p_dbl(lower = 0, tags = "train"),
        standardize = p_lgl(default = TRUE, tags = "train"),
        solver = p_fct(levels = c("AUTO", "IRLSM", "L_BFGS", "COORDINATE_DESCENT", "COORDINATE_DESCENT_NAIVE"), default = "IRLSM", tags = "train"),
        link = p_fct(levels = c("family_default", "logit", "log"), default = "logit", tags = "train"),
        ignore_const_cols = p_lgl(tags = "train"),
        score_each_iteration = p_lgl(tags = "train"),
        score_iteration_interval = p_int(tags = "train"),
        alpha = p_dbl(lower = 0, upper = 1, default = 0.5, tags = "train"),
        prior = p_dbl(lower = 0, tags = "train"),
        lambda = p_dbl(lower = 0, default = 1e-5, tags = "train"),
        lambda_search = p_lgl(default = FALSE, tags = "train"),
        nlambdas = p_int(lower = 1L, depends = quote(lambda_search == TRUE), tags = "train"),
        lambda_min_ratio = p_dbl(lower = 0, upper = 1, depends = quote(lambda_search == TRUE), tags = "train"),
        early_stopping = p_lgl(tags = "train"),
        stopping_rounds = p_int(lower = 0L, tags = "train"),
        stopping_metric = p_uty(tags = "train"),
        stopping_tolerance = p_dbl(lower = 0, tags = "train"),
        missing_values_handling = p_fct(levels = c("MeanImputation", "Skip", "PlugValues"), tags = "train"),
        plug_values = p_uty(depends = quote(missing_values_handling == "PlugValues"), tags = "train"),
        compute_p_values = p_lgl(tags = "train"),
        remove_collinear_columns = p_lgl(tags = "train"),
        beta_constraints = p_uty(tags = "train"),
        non_negative = p_lgl(tags = "train"),
        startval = p_uty(tags = "train"),
        calc_like = p_lgl(tags = "train"),
        cold_start = p_lgl(tags = "train"),
        max_active_predictors = p_int(tags = "train"),
        interactions = p_uty(tags = "train"),
        interaction_pairs = p_uty(tags = "train"),
        obj_reg = p_dbl(lower = 0, tags = "train"),
        balance_classes = p_lgl(tags = "train"),
        class_sampling_factors = p_uty(depends = quote(balance_classes == TRUE), tags = "train"),
        max_after_balance_size = p_dbl(lower = 0, depends = quote(balance_classes == TRUE), tags = "train"),
        max_runtime_secs = p_dbl(lower = 0, tags = "train"),
        generate_scoring_history = p_lgl(tags = "train"),
        build_null_model = p_lgl(tags = "train"),
        generate_variable_inflation_factors = p_lgl(tags = "train"),
        gainslift_bins = p_int(tags = "train"),
        init_optimal_glm = p_lgl(tags = "train"),
        intercept = p_lgl(default = TRUE, tags = "train")
      )

      super$initialize(
        id = "classif.h2o.glm",
        packages = "h2o",
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

      conn.up = try(h2o::h2o.getConnection())
      if (!inherits(conn.up, "H2OConnection")) {
        invisible(capture.output(h2o::h2o.init(ip = "127.0.0.1")))
      }

      pars = self$param_set$get_values(tags = "train")
      target = task$target_names
      features = task$feature_names
      data = task$data()

      weights = private$.get_weights(task)
      if (!is.null(weights)) {
        data$.mlr_weights = weights
        pars$weights_column = ".mlr_weights"
      }

      pars$family = "binomial"
      training_frame = h2o::h2o.no_progress(h2o::as.h2o(data))

       h2o::h2o.no_progress(invoke(h2o::h2o.glm,
          y = target,
          x = features,
          training_frame = training_frame,
          .args = pars
      ))
    },

    .predict = function(task) {

      conn.up = try(h2o::h2o.getConnection())
      if (!inherits(conn.up, "H2OConnection")) {
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
