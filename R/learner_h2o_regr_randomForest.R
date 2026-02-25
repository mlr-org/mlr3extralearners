#' @title Regression H2O Random Forest Learner
#' @author awinterstetter
#' @name mlr_learners_regr.h2o.randomForest
#'
#' @description
#' Regression random forest learner.
#' Calls [h2o::h2o.randomForest()] from package \CRANpkg{h2o}.
#'
#' @templateVar id regr.h2o.randomForest
#' @template learner
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrH2ORandomForest = R6Class("LearnerRegrH2ORandomForest", inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ignore_const_cols = p_lgl(default = TRUE, tags = "train"),
        score_each_iteration = p_lgl(default = FALSE, tags = "train"),
        score_tree_interval = p_int(lower = 0L, default = 0L, tags = "train"),
        ntrees = p_int(lower = 1L, default = 50L, tags = "train"),
        max_depth = p_int(lower = 1L, default = 20L, tags = "train"),
        min_rows = p_dbl(lower = 1, default = 1, tags = "train"),
        nbins = p_int(lower = 1L, default = 20L, tags = "train"),
        nbins_top_level = p_int(lower = 1L, default = 1024L, tags = "train"),
        nbins_cats = p_int(lower = 1L, default = 1024L, tags = "train"),
        r2_stopping = p_dbl(default = Inf, tags = "train"),
        stopping_rounds = p_int(lower = 0L, default = 0L, tags = "train"),
        stopping_metric = p_fct(levels = c("AUTO", "deviance", "MSE", "RMSE", "MAE", "RMSLE", "custom", "custom_increasing"), default = "AUTO", tags = "train"),
        stopping_tolerance = p_dbl(lower = 0, default = 0.001, tags = "train"),
        max_runtime_secs = p_dbl(lower = 0, default = 0, tags = "train"),
        seed = p_int(default = -1L, tags = "train"),
        build_tree_one_node = p_lgl(default = FALSE, tags = "train"),
        mtries = p_int(lower = -1L, default = -1L, tags = "train"),
        sample_rate = p_dbl(lower = 0, upper = 1, default = 0.632, tags = "train"),
        col_sample_rate_change_per_level = p_dbl(lower = 0, default = 1, tags = "train"),
        col_sample_rate_per_tree = p_dbl(lower = 0, upper = 1, default = 1, tags = "train"),
        min_split_improvement = p_dbl(lower = 0, default = 1e-05, tags = "train"),
        histogram_type = p_fct(levels = c("AUTO", "UniformAdaptive", "Random", "QuantilesGlobal", "RoundRobin", "UniformRobust"), default = "AUTO", tags = "train"),
        categorical_encoding = p_fct(levels = c("AUTO", "Enum", "OneHotInternal", "OneHotExplicit", "Binary", "Eigen", "LabelEncoder", "SortByResponse", "EnumLimited"), default = "AUTO", tags = "train"),
        check_constant_response = p_lgl(default = TRUE, tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "regr.h2o.randomForest",
        packages = "h2o",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = "response",
        param_set = param_set,
        properties = c("weights", "missings"),
        man = "mlr3extralearners::mlr_learners_regr.h2o.randomForest",
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

      list(response = as.vector(pred$predict))
    }
  )
)

.extralrns_dict$add("regr.h2o.randomForest", LearnerRegrH2ORandomForest)
