#' @title Classification H2O Deep Learning Learner
#' @author awinterstetter
#' @name mlr_learners_classif.h2o.deeplearning
#'
#' @description
#' Classification feed-forward multilayer artificial neural network learner.
#' Class [h2o::h2o.deeplearning()] from package \CRANpkg{h2o}.
#'
#' @templateVar id classif.h2o.deeplearning
#' @template learner
#'
#' @references
#' `r format_bib("fryda2025h2o")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifH2ODeeplearning = R6Class("LearnerClassifH2ODeeplearning", inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ignore_const_cols = p_lgl(default = TRUE, tags = "train"),
        score_each_iteration = p_lgl(default = FALSE, tags = "train"),
        # weights_column
        # offset_column
        balance_classes = p_lgl(default = FALSE, tags = "train"),
        class_sampling_factors = p_dbl(default = NULL, special_vals = list(NULL), depends = quote(balance_classes == TRUE), tags = "train"),
        max_after_balance_size = p_dbl(default = 5, depends = quote(balance_classes == TRUE), tags = "train"),
        # checkpoint
        # pretrained_autoencoder
        # overwrite_with_best_model
        use_all_factor_levels = p_lgl(default = TRUE, tags = "train"),
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
        max_w2 = p_dbl(default = Inf, tags = "train"),
        initial_weight_distribution = p_fct(levels = c("UniformAdaptive", "Uniform", "Normal"), default = "UniformAdaptive", tags = "train"),
        initial_weight_scale = p_dbl(default = 1, tags = "train"),
        # initial_weights
        # initial_bias
        loss = p_fct(levels = c("Automatic", "CrossEntropy", "Quadratic", "Absolute", "Huber"), default = "Automatic", tags = "train"),
        distribution = p_fct(levels = c("AUTO", "bernoulli", "multinomial"), default = "AUTO", tags = "train"),
        # quantile_alpha
        # tweedie_power
        # huber_alpha
        score_interval = p_dbl(default = 5, tags = "train"),
        score_training_samples = p_int(default = 10000L, tags = "train"),
        score_validation_samples = p_int(default = 0L, tags = "train"),
        score_duty_cycle = p_dbl(default = 0.1, tags = "train"),
        classification_stop = p_dbl(lower = -1, default = 0, tags = "train"),
        stopping_rounds = p_int(lower = 0L, default = 5L, tags = "train"),
        stopping_metric = p_fct(levels = c("AUTO", "logloss", "AUC", "lift_top_group", "misclassification", "AUCPR", "mean_per_class_error", "custom", "custom_increasing"), default = "AUTO", tags = "train"),
        stopping_tolerance = p_dbl(lower = 0, default = 0, tags = "train"),
        max_runtime_secs = p_dbl(lower = 0, default = 0, tags = "train"),
        score_validation_sampling = p_fct(levels = c("Uniform", "Stratified"), default = "Uniform", tags = "train"),
        diagnostics = p_lgl(default = TRUE, tags = "train"),
        fast_mode = p_lgl(default = TRUE, tags = "train"),
        force_load_balance = p_lgl(default = TRUE, tags = "train"),
        variable_importances = p_lgl(default = TRUE, tags = "train"),
        replicate_training_data = p_lgl(default = TRUE, tags = "train"),
        single_node_mode = p_lgl(default = FALSE, tags = "train"),
        shuffle_training_data = p_lgl(default = FALSE, tags = "train"),
        missing_values_handling = p_fct(levels = c("MeanImputation", "Skip"), default = "MeanImputation", tags = "train"),
        quiet_mode = p_lgl(init = TRUE, tags = "train"),
        autoencoder = p_lgl(default = FALSE, tags = "train"),
        sparse = p_lgl(default = FALSE, tags = "train"),
        col_major = p_lgl(default = FALSE, tags = "train"),
        average_activation = p_dbl(default = 0, tags = "train"),
        sparsity_beta = p_dbl(default = 0, tags = "train"),
        # max_categorical_features
        reproducible = p_lgl(default = FALSE, tags = "train"),
        export_weights_and_biases = p_lgl(default = FALSE, tags = "train"),
        mini_batch_size = p_int(default = 1L, tags = "train"),
        categorical_encoding = p_fct(levels = c("AUTO", "Enum", "OneHotInternal", "OneHotExplicit", "Binary", "Eigen", "LabelEncoder", "SortByResponse", "EnumLimited"), default = "AUTO", tags = "train"),
        elastic_averaging = p_lgl(default = FALSE, tags = "train"),
        elastic_averaging_moving_rate = p_dbl(default = 0.9, depends = quote(elastic_averaging == TRUE), tags = "train"),
        elastic_averaging_regularization = p_dbl(default = 0.001, depends = quote(elastic_averaging == TRUE), tags = "train"),
        # export_checkpoints_dir
        verbose = p_lgl(default = FALSE, tags = "train")
      )

      super$initialize(
        id = "classif.h2o.deeplearning",
        packages = "h2o",
        feature_types = c("integer", "numeric", "factor"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("weights", "twoclass", "multiclass", "missings", "importance"),
        man = "mlr3extralearners::mlr_learners_classif.h2o.deeplearning",
        label = "H2O Deep Learning"
      )
    },

    #' @description
    #' Variable importance scores computed by H2O.
    #' Requires `variable_importances = TRUE`.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      pars = self$param_set$get_values()
      if (isFALSE(pars$variable_importances)) {
        stop("No importance available. Set 'variable_importances = TRUE'.")
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

      training_frame = h2o::as.h2o(data)
      invoke(h2o::h2o.deeplearning,
        y = target,
        x = feature,
        training_frame = training_frame,
        .args = pars
      )
    },

    .predict = function(task) {

      conn.up = tryCatch(h2o::h2o.getConnection(), error = function(err) {
        FALSE
      })
      if (!inherits(conn.up, "H2OConnection")) {
        h2o::h2o.init()
      }

      newdata = h2o::as.h2o(ordered_features(task, self))

      pred = h2o::h2o.predict(self$model, newdata = newdata)

      if (self$predict_type == "response") {
        response = factor(as.vector(pred$predict), levels = task$class_names)
        return(list(response = response))
      }

      prob = as.matrix(pred[, -1])
      colnames(prob) = names(pred)[-1]
      prob = prob[, task$class_names, drop = FALSE]

      list(prob = prob)
    }
  )
)

.extralrns_dict$add("classif.h2o.deeplearning", LearnerClassifH2ODeeplearning)
