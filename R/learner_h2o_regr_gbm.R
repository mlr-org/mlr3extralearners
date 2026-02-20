#' @title Regression H2O GBM Learner
#' @author awinterstetter
#' @name mlr_learners_regr.h2o.gbm
#'
#' @description
#' Gradient boosting machine learner.
#' Class [h2o::h2o.gbm()] from package \CRANpkg{h2o}.
#'
#' @templateVar id regr.h2o.gbm
#' @template learner
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrH2OGBM = R6Class("LearnerRegrH2OGBM", inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ntrees = p_int(default = 50L, lower = 1L, tags = "train"),
        max_depth = p_int(default = 5L, lower = 1L, tags = "train"),
        min_rows = p_int(default = 10L, lower = 1L, tags = "train"),
        nbins = p_int(default = 20L, lower = 1L, tags = "train"),
        nbins_cats = p_int(default = 1024L, lower = 1L, tags = "train"),
        nbins_top_level = p_int(default = 1024L, lower = 1L, tags = "train"),
        seed = p_int(default = -1L, tags = "train"),
        learn_rate = p_dbl(default = 0.1, lower = 0, upper = 1, tags = "train"),
        learn_rate_annealing = p_dbl(default = 1, lower = 0, upper = 1, tags = "train"),
        distribution = p_fct(levels = c("poisson", "laplace", "tweedie", "gaussian", "huber",
          "gamma", "quantile"),
        default = "gaussian", tags = "train"),
        sample_rate = p_dbl(default = 1, lower = 0, upper = 1, tags = "train"),
        col_sample_rate = p_dbl(default = 1, lower = 0, upper = 1, tags = "train"),
        col_sample_rate_change_per_level = p_dbl(default = 1, lower = 0, upper = 1,
          tags = "train"),
        col_sample_rate_per_tree = p_dbl(default = 1, lower = 0, upper = 1, tags = "train"),
        max_abs_leafnode_pred = p_dbl(default = Inf, lower = 0, tags = "train"),
        pred_noise_bandwidth = p_dbl(default = 0, lower = 0, tags = "train"),
        categorical_encoding = p_fct(levels = c("AUTO", "Enum", "OneHotInternal",
          "OneHotExplicit", "Binary", "Eigen", "LabelEncoder", "SortByResponse"),
        default = "AUTO", tags = "train"),
        min_split_improvement = p_dbl(default = 1e-05, lower = 0, tags = "train"),
        histogram_type = p_fct(levels = c("AUTO", "UniformAdaptive", "Random", "QuantilesGlobal",
          "RoundRobin"),
        default = "AUTO", tags = "train"),
        score_each_iteration = p_lgl(default = FALSE, tags = "train"),
        score_tree_interval = p_int(default = 0L, lower = 0L, tags = "train"),
        stopping_rounds = p_int(default = 0L, lower = 0L, tags = "train"),
        stopping_metric = p_fct(levels = c("AUTO", "deviance", "logloss", "MSE", "RMSE", "MAE",
          "RMSLE"),
        default = "AUTO", tags = "train"),
        stopping_tolerance = p_dbl(default = 0.001, lower = 0, tags = "train"),
        quantile_alpha = p_dbl(default = 0.5, lower = 0, upper = 1,
          depends = quote(distribution == "quantile"), tags = "train"),
        tweedie_power = p_dbl(default = 1.5, lower = 1, upper = 2,
          depends = quote(distribution == "tweedie"), tags = "train"),
        huber_alpha = p_dbl(default = 0.9, lower = 0, upper = 1,
          depends = quote(distribution == "huber"), tags = "train"),
        quiet = p_lgl(init = TRUE, tags = c("train", "predict"))
      )

      super$initialize(
        id = "regr.h2o.gbm",
        packages = "h2o",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = "response",
        param_set = param_set,
        properties = c("weights", "missings", "importance"),
        man = "mlr3extralearners::mlr_learners_regr.h2o.gbm",
        label = "H2O GBM"
      )
    },

    #' @description
    #' Variable importance scores computed by H2O.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }

      imp = h2o::h2o.varimp(self$model)
      if (is.null(imp) || !nrow(imp)) {
        stop("No importance available from H2O.")
      }

      scores = imp$relative_importance
      names(scores) = imp$variable
      sort(scores, decreasing = TRUE)
    }
  ),

  private = list(

    .train = function(task) {

      conn.up = tryCatch(h2o::h2o.getConnection(), error = function(err) {
        FALSE
      })
      if (!inherits(conn.up, "H2OConnection")) {
        h2o::h2o.init(ip = "127.0.0.1", startH2O = TRUE)
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

      quiet = pars$quiet
      pars$quiet = NULL

      training_frame = h2o::as.h2o(data)

      train_fun = function() {
        invoke(h2o::h2o.gbm,
          y = target,
          x = features,
          training_frame = training_frame,
          .args = pars
        )
      }

      if (quiet == TRUE) {
        utils::capture.output({
          model = train_fun()
        })
      } else {
        model = train_fun()
      }

      model
    },

    .predict = function(task) {

      conn.up = tryCatch(h2o::h2o.getConnection(), error = function(err) {
        FALSE
      })
      if (!inherits(conn.up, "H2OConnection")) {
        h2o::h2o.init(ip = "127.0.0.1", startH2O = TRUE)
      }

      newdata = h2o::as.h2o(ordered_features(task, self))

      pars = self$param_set$get_values(tags = "predict")
      quiet = pars$quiet

      pred_fun = function() {
        h2o::h2o.predict(self$model, newdata = newdata)
      }

      if (quiet == TRUE) {
        utils::capture.output({
          pred = pred_fun()
        })
      } else {
        pred = pred_fun()
      }

      list(response = as.vector(pred$predict))
    }
  )
)

.extralrns_dict$add("regr.h2o.gbm", LearnerRegrH2OGBM)
