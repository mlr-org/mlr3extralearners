#' @title Regression H2O Deep Learning Learner
#' @author awinterstetter
#' @name mlr_learners_regr.h2o.deeplearning
#'
#' @description
#' Regression feed-forward multilayer artificial neural network learner.
#' Class [h2o::h2o.deeplearning()] from package \CRANpkg{h2o}.
#'
#' @templateVar id regr.h2o.deeplearning
#' @template learner
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrH2ODeeplearning = R6Class("LearnerRegrH2ODeeplearning", inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ignore_const_cols = p_lgl(default = TRUE, tags = "train"),
        score_each_iteration = p_lgl(default = FALSE, tags = "train"),
        checkpoint = p_uty(default = NULL, tags = "train"),
        pretrained_autoencoder = p_uty(default = NULL, tags = "train"),
        overwrite_with_best_model = p_lgl(default = TRUE, tags = "train"),
        standardize = p_lgl(default = TRUE, tags = "train"),
        activation = p_fct(levels = c("Rectifier", "Tanh", "TanhWithDropout", "RectifierWithDropout", "Maxout", "MaxoutWithDropout"), default = "Rectifier", tags = "train"),
        hidden = p_uty(default = c(200L, 200L), tags = "train"),
        epochs = p_dbl(lower = 1, default = 10, tags = "train"),
        train_samples_per_iteration = p_int(lower = -2L, default = -2L, tags = "train"),
        target_ratio_comm_to_comp = p_dbl(default = 0.05, tags = "train"),
        seed = p_int(default = -1L, tags = "train"),
        adaptive_rate = p_lgl(default = TRUE, tags = "train"),
        rho = p_dbl(lower = 0, default = 0.99, tags = "train"),
        epsilon = p_dbl(lower = 1e-10, upper = 1e-4, default = 1e-08, tags = "train"),
        rate = p_dbl(lower = 0, upper = 1, default = 0.005, tags = "train"),
        rate_annealing = p_dbl(lower = 0, default = 1e-06, tags = "train"),
        rate_decay = p_dbl(lower = 0, default = 1, tags = "train"),
        momentum_start = p_dbl(default = 0, tags = "train"),
        momentum_ramp = p_dbl(default = 1e+06, tags = "train"),
        momentum_stable = p_dbl(default = 0, tags = "train"),
        nesterov_accelerated_gradient = p_lgl(default = TRUE, tags = "train"),
        input_dropout_ratio = p_dbl(default = 0, tags = "train"),
        hidden_dropout_ratios = p_dbl(default = 0.5, tags = "train"),
        l1 = p_dbl(default = 0, tags = "train"),
        l2 = p_dbl(default = 0, tags = "train"),
        max_w2 = p_dbl(default = 3.4028235e+38, tags = "train"),
        initial_weight_distribution = p_fct(levels = c("UniformAdaptive", "Uniform", "Normal"), default = "UniformAdaptive", tags = "train"),
        initial_weight_scale = p_dbl(default = 1, tags = "train"),
        loss = p_fct(levels = c("Automatic", "Quantile", "Quadratic", "Absolute", "Huber"), default = "Automatic", tags = "train"),
        distribution = p_fct(levels = c("AUTO", "gaussian", "poisson", "gamma", "tweedie", "laplace", "huber", "quantile"), default = "AUTO", tags = "train"),
        quantile_alpha = p_dbl(default = 0.5, lower = 0, upper = 1, depends = quote(distribution == "quantile"), tags = "train"),
        tweedie_power = p_dbl(default = 1.5, lower = 1, upper = 2, depends = quote(distribution == "tweedie"), tags = "train"),
        huber_alpha = p_dbl(default = 0.9, lower = 0, upper = 1, depends = quote(distribution == "huber"), tags = "train"),
        score_interval = p_dbl(default = 5, tags = "train"),
        score_training_samples = p_int(default = 10000L, tags = "train"),
        score_validation_samples = p_int(default = 0L, tags = "train"),
        score_duty_cycle = p_dbl(default = 0.1, tags = "train"),
        regression_stop = p_dbl(lower = -1, default = 1e-06, tags = "train"),
        stopping_rounds = p_int(lower = 0L, default = 5L, tags = "train"),
        stopping_metric = p_fct(levels = c("AUTO", "deviance", "MSE", "RMSE", "MAE", "RMSLE"), default = "AUTO", tags = "train"),
        stopping_tolerance = p_dbl(lower = 0, default = 0, tags = "train"),
        max_runtime_secs = p_dbl(lower = 0, default = 0, tags = "train"),
        diagnostics = p_lgl(default = TRUE, tags = "train"),
        fast_mode = p_lgl(default = TRUE, tags = "train"),
        force_load_balance = p_lgl(default = TRUE, tags = "train"),
        replicate_training_data = p_lgl(default = TRUE, tags = "train"),
        single_node_mode = p_lgl(default = FALSE, tags = "train"),
        shuffle_training_data = p_lgl(default = FALSE, tags = "train"),
        missing_values_handling = p_fct(levels = c("MeanImputation", "Skip"), default = "MeanImputation", tags = "train"),
        quiet_mode = p_lgl(default = FALSE, tags = "train"),
        autoencoder = p_lgl(default = FALSE, tags = "train"),
        sparse = p_lgl(default = FALSE, tags = "train"),
        average_activation = p_dbl(default = 0, tags = "train"),
        sparsity_beta = p_dbl(default = 0, tags = "train"),
        max_categorical_features = p_int(lower = 1L, default = 2147483647L, tags = "train"),
        reproducible = p_lgl(default = FALSE, tags = "train"),
        export_weights_and_biases = p_lgl(default = FALSE, tags = "train"),
        mini_batch_size = p_int(default = 1L, tags = "train"),
        categorical_encoding = p_fct(levels = c("AUTO", "Enum", "OneHotInternal", "OneHotExplicit", "Binary", "Eigen", "LabelEncoder", "SortByResponse", "EnumLimited"), default = "AUTO", tags = "train"),
        elastic_averaging = p_lgl(default = FALSE, tags = "train"),
        elastic_averaging_moving_rate = p_dbl(default = 0.9, depends = quote(elastic_averaging == TRUE), tags = "train"),
        elastic_averaging_regularization = p_dbl(default = 0.001, depends = quote(elastic_averaging == TRUE), tags = "train"),
        export_checkpoints_dir = p_uty(default = NULL, tags = "train"),
        custom_metric_func = p_uty(default = NULL, tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "regr.h2o.deeplearning",
        packages = "h2o",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = "response",
        param_set = param_set,
        properties = c("weights", "missings"),
        man = "mlr3extralearners::mlr_learners_regr.h2o.deeplearning",
        label = "H2O Deep Learning"
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
      feature = task$feature_names
      data = task$data()

      weights = private$.get_weights(task)
      if (!is.null(weights)) {
        data$.mlr_weights = weights
        pars$weights_column = ".mlr_weights"
      }

      training_frame = h2o::h2o.no_progress(h2o::as.h2o(data))

      h2o::h2o.no_progress(invoke(h2o::h2o.deeplearning,
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

.extralrns_dict$add("regr.h2o.deeplearning", LearnerRegrH2ODeeplearning)
