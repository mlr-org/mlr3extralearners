#' @title Classification H2O Random Forest Learner
#' @author awinterstetter
#' @name mlr_learners_classif.h2o.randomForest
#'
#' @description
#' Classification random forest learner.
#' Calls [h2o::h2o.randomForest()] from package \CRANpkg{h2o}.
#'
#' @templateVar id classif.h2o.randomForest
#' @template learner
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifH2ORandomForest = R6Class("LearnerClassifH2ORandomForest", inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ignore_const_cols = p_lgl(default = TRUE, tags = "train"),
        score_each_iteration = p_lgl(default = FALSE, tags = "train"),
        score_tree_interval = p_int(lower = 0L, default = 0L, tags = "train"),
        balance_classes = p_lgl(default = FALSE, tags = "train"),
        class_sampling_factors = p_dbl(default = NULL, special_vals = list(NULL), depends = quote(balance_classes == TRUE), tags = "train"),
        max_after_balance_size = p_dbl(lower = 0, default = 5, depends = quote(balance_classes == TRUE), tags = "train"),
        checkpoint = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        ntrees = p_int(lower = 1L, default = 50L, tags = "train"),
        max_depth = p_int(lower = 1L, default = 20L, tags = "train"),
        min_rows = p_dbl(lower = 1, default = 1, tags = "train"),
        nbins = p_int(lower = 1L, default = 20L, tags = "train"),
        nbins_top_level = p_int(lower = 1L, default = 1024L, tags = "train"),
        nbins_cats = p_int(lower = 1L, default = 1024L, tags = "train"),
        stopping_rounds = p_int(lower = 0L, default = 0L, tags = "train"),
        stopping_metric = p_fct(levels = c("AUTO", "deviance", "logloss", "AUC", "AUCPR", "lift_top_group", "misclassification", "mean_per_class_error", "custom", "custom_increasing"), default = "AUTO", tags = "train"),
        stopping_tolerance = p_dbl(lower = 0, default = 0.001, tags = "train"),
        max_runtime_secs = p_dbl(lower = 0, default = 0, tags = "train"),
        seed = p_int(default = -1L, tags = "train"),
        build_tree_one_node = p_lgl(default = FALSE, tags = "train"),
        mtries = p_int(lower = -1L, default = -1L, tags = "train"),
        sample_rate = p_dbl(lower = 0, upper = 1, default = 0.632, tags = "train"),
        sample_rate_per_class = p_dbl(default = NULL, special_vals = list(NULL), tags = "train"),
        binomial_double_trees = p_lgl(default = FALSE, tags = "train"),
        col_sample_rate_change_per_level = p_dbl(lower = 0, default = 1, tags = "train"),
        col_sample_rate_per_tree = p_dbl(lower = 0, upper = 1, default = 1, tags = "train"),
        min_split_improvement = p_dbl(lower = 0, default = 1e-05, tags = "train"),
        export_checkpoints_dir = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        histogram_type = p_fct(levels = c("AUTO", "UniformAdaptive", "Random", "QuantilesGlobal", "RoundRobin", "UniformRobust"), default = "AUTO", tags = "train"),
        categorical_encoding = p_fct(levels = c("AUTO", "Enum", "OneHotInternal", "OneHotExplicit", "Binary", "Eigen", "LabelEncoder", "SortByResponse", "EnumLimited"), default = "AUTO", tags = "train"),
        distribution = p_fct(levels = c("AUTO", "bernoulli", "multinomial"), default = "AUTO", tags = "train"),
        check_constant_response = p_lgl(default = TRUE, tags = "train"),
        gainslift_bins = p_int(lower = -1L, default = -1L, tags = "train"),
        auc_type = p_fct(levels = c("AUTO", "NONE", "MACRO_OVR", "WEIGHTED_OVR", "MACRO_OVO", "WEIGHTED_OVO"), default = "AUTO", tags = "train"),
        custom_metric_func = p_uty(default = NULL, special_vals = list(NULL), tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "classif.h2o.randomForest",
        packages = "h2o",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("weights", "twoclass", "multiclass", "missings"),
        man = "mlr3extralearners::mlr_learners_classif.h2o.randomForest",
        label = "H2O Random Forest"
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

      weights = private$.get_weights(task)
      if (!is.null(weights)) {
        data = task$data()
        data$.mlr_weights = weights
        pars$weights_column = ".mlr_weights"
      } else {
        data = task$data()
      }

      target = task$target_names
      feature = task$feature_names
      training_frame = h2o::h2o.no_progress(h2o::as.h2o(data))

      h2o::h2o.no_progress(invoke(h2o::h2o.randomForest,
          y = target,
          x = feature,
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

.extralrns_dict$add("classif.h2o.randomForest", LearnerClassifH2ORandomForest)
