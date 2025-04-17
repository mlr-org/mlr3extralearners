#' @title Extreme Gradient Boosting Classification Learner
#'
#' @name mlr_learners_classif.xgboost
#'
#' @description
#' eXtreme Gradient Boosting classification.
#' Calls [xgboost::xgb.train()] from package \CRANpkg{xgboost}.
#'
#' If not specified otherwise, the evaluation metric is set to the default `"logloss"`
#' for binary classification problems and set to `"mlogloss"` for multiclass problems.
#' This was necessary to silence a deprecation warning.
#'
#' Note that using the `watchlist` parameter directly will lead to problems when wrapping this [mlr3::Learner] in a
#' `mlr3pipelines` `GraphLearner` as the preprocessing steps will not be applied to the data in the watchlist.
#' See the section *Early Stopping and Validation* on how to do this.
#'
#' @template note_xgboost
#' @section Initial parameter values:
#' - `nrounds`:
#'   - Actual default: no default.
#'   - Adjusted default: 1000.
#'   - Reason for change: Without a default construction of the learner would error.
#'     The lightgbm learner has a default of 1000, so we use the same here.
#' - `nthread`:
#'   - Actual value: Undefined, triggering auto-detection of the number of CPUs.
#'   - Adjusted value: 1.
#'   - Reason for change: Conflicting with parallelization via \CRANpkg{future}.
#' - `verbose`:
#'   - Actual default: 1.
#'   - Adjusted default: 0.
#'   - Reason for change: Reduce verbosity.
#'
#' @section Early Stopping and Validation:
#' In order to monitor the validation performance during the training, you can set the `$validate` field of the Learner.
#' For information on how to configure the validation set, see the *Validation* section of [mlr3::Learner].
#' This validation data can also be used for early stopping, which can be enabled by setting the `early_stopping_rounds` parameter.
#' The final (or in the case of early stopping best) validation scores can be accessed via `$internal_valid_scores`, and the optimal `nrounds` via `$internal_tuned_values`.
#' The internal validation measure can be set via the `eval_metric` parameter that can be a [mlr3::Measure], a function, or a character string for the internal xgboost measures.
#' Using an [mlr3::Measure] is slower than the internal xgboost measures, but allows to use the same measure for tuning and validation.
#'
#' @inheritSection mlr_learners_regr.xgboost Offset
#'
#' @templateVar id classif.xgboost
#' @template learner
#'
#' @references
#' `r format_bib("chen_2016")`
#'
#' @export
#' @template seealso_learner
#' @template example_dontrun
#' @examples
#'
#' \dontrun{
#' # Train learner with early stopping on spam data set
#' task = tsk("spam")
#'
#' # use 30 percent for validation
#' # Set early stopping parameter
#' learner = lrn("classif.xgboost",
#'   nrounds = 100,
#'   early_stopping_rounds = 10,
#'   validate = 0.3
#' )
#'
#' # Train learner with early stopping
#' learner$train(task)
#'
#' # Inspect optimal nrounds and validation performance
#' learner$internal_tuned_values
#' learner$internal_valid_scores
#' }
LearnerClassifXgboost = R6Class("LearnerClassifXgboost",
                                inherit = LearnerClassif,

                                public = list(

                                  #' @description
                                  #' Creates a new instance of this [R6][R6::R6Class] class.
                                  initialize = function() {

                                    p_nrounds = p_int(1L,
                                                      tags = c("train", "hotstart", "internal_tuning"),
                                                      aggr = crate(function(x) as.integer(ceiling(mean(unlist(x)))), .parent = topenv()),
                                                      in_tune_fn = crate(function(domain, param_vals) {
                                                        if (is.null(param_vals$early_stopping_rounds)) {
                                                          stop("Parameter 'early_stopping_rounds' must be set to use internal tuning.")
                                                        }
                                                        if (is.null(param_vals$eval_metric)) {
                                                          stop("Parameter 'eval_metric' must be set explicitly when using internal tuning.")
                                                        }
                                                        assert_integerish(domain$upper, len = 1L, any.missing = FALSE) }, .parent = topenv()),
                                                      disable_in_tune = list(early_stopping_rounds = NULL)
                                    )

                                    ps = ps(
                                      alpha                       = p_dbl(0, default = 0, tags = "train"),
                                      approxcontrib               = p_lgl(default = FALSE, tags = "predict"),
                                      base_score                  = p_dbl(default = 0.5, tags = "train"),
                                      booster                     = p_fct(c("gbtree", "gblinear", "dart"), default = "gbtree", tags = c("train", "control")),
                                      callbacks                   = p_uty(default = list(), tags = "train"),
                                      colsample_bylevel           = p_dbl(0, 1, default = 1, tags = "train"),
                                      colsample_bynode            = p_dbl(0, 1, default = 1, tags = "train"),
                                      colsample_bytree            = p_dbl(0, 1, default = 1, tags = c("train", "control")),
                                      device                      = p_uty(default = "cpu", tags = "train"),
                                      disable_default_eval_metric = p_lgl(default = FALSE, tags = "train"),
                                      early_stopping_rounds       = p_int(1L, default = NULL, special_vals = list(NULL), tags = "train"),
                                      eta                         = p_dbl(0, 1, default = 0.3, tags = c("train", "control")),
                                      eval_metric                 = p_uty(tags = "train", custom_check = crate({function(x) check_true(any(is.character(x), is.function(x), inherits(x, "Measure")))})),
                                      feature_selector            = p_fct(c("cyclic", "shuffle", "random", "greedy", "thrifty"), default = "cyclic", tags = "train", depends = quote(booster == "gblinear")),
                                      gamma                       = p_dbl(0, default = 0, tags = c("train", "control")),
                                      grow_policy                 = p_fct(c("depthwise", "lossguide"), default = "depthwise", tags = "train", depends = quote(tree_method == "hist")),
                                      interaction_constraints     = p_uty(tags = "train"),
                                      iterationrange              = p_uty(tags = "predict"),
                                      lambda                      = p_dbl(0, default = 1, tags = "train"),
                                      lambda_bias                 = p_dbl(0, default = 0, tags = "train", depends = quote(booster == "gblinear")),
                                      max_bin                     = p_int(2L, default = 256L, tags = "train", depends = quote(tree_method == "hist")),
                                      max_delta_step              = p_dbl(0, default = 0, tags = "train"),
                                      max_depth                   = p_int(0L, default = 6L, tags = c("train", "control")),
                                      max_leaves                  = p_int(0L, default = 0L, tags = "train", depends = quote(grow_policy == "lossguide")),
                                      maximize                    = p_lgl(default = NULL, special_vals = list(NULL), tags = "train"),
                                      min_child_weight            = p_dbl(0, default = 1, tags = c("train", "control")),
                                      missing                     = p_dbl(default = NA, tags = c("train", "predict"), special_vals = list(NA, NA_real_, NULL)),
                                      monotone_constraints        = p_uty(default = 0, tags = c("train", "control"), custom_check = crate(function(x) { checkmate::check_integerish(x, lower = -1, upper = 1, any.missing = FALSE) })), # nolint
                                      nrounds                     = p_nrounds,
                                      normalize_type              = p_fct(c("tree", "forest"), default = "tree", tags = "train", depends = quote(booster == "dart")),
                                      nthread                     = p_int(1L, default = 1L, tags = c("train", "control", "threads")),
                                      ntreelimit                  = p_int(1L, default = NULL, special_vals = list(NULL), tags = "predict"),
                                      num_parallel_tree           = p_int(1L, default = 1L, tags = c("train", "control")),
                                      objective                   = p_uty(default = "binary:logistic", tags = c("train", "predict", "control")),
                                      one_drop                    = p_lgl(default = FALSE, tags = "train", depends = quote(booster == "dart")),
                                      outputmargin                = p_lgl(default = FALSE, tags = "predict"),
                                      predcontrib                 = p_lgl(default = FALSE, tags = "predict"),
                                      predinteraction             = p_lgl(default = FALSE, tags = "predict"),
                                      predleaf                    = p_lgl(default = FALSE, tags = "predict"),
                                      print_every_n               = p_int(1L, default = 1L, tags = "train", depends = quote(verbose == 1L)),
                                      process_type                = p_fct(c("default", "update"), default = "default", tags = "train"),
                                      rate_drop                   = p_dbl(0, 1, default = 0, tags = "train", depends = quote(booster == "dart")),
                                      refresh_leaf                = p_lgl(default = TRUE, tags = "train"),
                                      reshape                     = p_lgl(default = FALSE, tags = "predict"),
                                      seed_per_iteration          = p_lgl(default = FALSE, tags = "train"),
                                      sampling_method             = p_fct(c("uniform", "gradient_based"), default = "uniform", tags = "train", depends = quote(booster == "gbtree")),
                                      sample_type                 = p_fct(c("uniform", "weighted"), default = "uniform", tags = "train", depends = quote(booster == "dart")),
                                      save_name                   = p_uty(default = NULL, tags = "train"),
                                      save_period                 = p_int(0, default = NULL, special_vals = list(NULL), tags = "train"),
                                      scale_pos_weight            = p_dbl(default = 1, tags = "train"),
                                      skip_drop                   = p_dbl(0, 1, default = 0, tags = "train", depends = quote(booster == "dart")),
                                      strict_shape                = p_lgl(default = FALSE, tags = "predict"),
                                      subsample                   = p_dbl(0, 1, default = 1, tags = c("train", "control")),
                                      top_k                       = p_int(0, default = 0, tags = "train", depends = quote(feature_selector %in% c("greedy", "thrifty") && booster == "gblinear")),
                                      training                    = p_lgl(default = FALSE, tags = "predict"),
                                      tree_method                 = p_fct(c("auto", "exact", "approx", "hist", "gpu_hist"), default = "auto", tags = "train", depends = quote(booster %in% c("gbtree", "dart"))),
                                      tweedie_variance_power      = p_dbl(1, 2, default = 1.5, tags = "train", depends = quote(objective == "reg:tweedie")),
                                      updater                     = p_uty(tags = "train"), # Default depends on the selected booster
                                      verbose                     = p_int(0L, 2L, default = 1L, tags = "train"),
                                      watchlist                   = p_uty(default = NULL, tags = "train"),
                                      xgb_model                   = p_uty(default = NULL, tags = "train")
                                    )

                                    # custom defaults
                                    ps$set_values(nrounds = 1000L, nthread = 1L, verbose = 0L)

                                    super$initialize(
                                      id = "classif.xgboost",
                                      predict_types = c("response", "prob"),
                                      param_set = ps,
                                      feature_types = c("logical", "integer", "numeric"),
                                      properties = c("weights", "missings", "twoclass", "multiclass", "importance", "hotstart_forward", "internal_tuning", "validation", "offset"),
                                      packages = c("mlr3learners", "xgboost"),
                                      label = "Extreme Gradient Boosting",
                                      man = "mlr3learners::mlr_learners_classif.xgboost"
                                    )
                                  },

                                  #' @description
                                  #' The importance scores are calculated with [xgboost::xgb.importance()].
                                  #'
                                  #' @return Named `numeric()`.
                                  importance = function() {
                                    if (is.null(self$model)) {
                                      stopf("No model stored")
                                    }

                                    imp = xgboost::xgb.importance(
                                      model = self$model
                                    )
                                    set_names(imp$Gain, imp$Feature)
                                  }
                                ),
                                active = list(
                                  #' @field internal_valid_scores (named `list()` or `NULL`)
                                  #' The validation scores extracted from `model$evaluation_log`.
                                  #' If early stopping is activated, this contains the validation scores of the model for the optimal `nrounds`,
                                  #' otherwise the `nrounds` for the final model.
                                  internal_valid_scores = function() {
                                    self$state$internal_valid_scores
                                  },

                                  #' @field internal_tuned_values (named `list()` or `NULL`)
                                  #' If early stopping is activated, this returns a list with `nrounds`,
                                  #' which is extracted from `$best_iteration` of the model and otherwise `NULL`.
                                  internal_tuned_values = function() {
                                    self$state$internal_tuned_values
                                  },

                                  #' @field validate (`numeric(1)` or `character(1)` or `NULL`)
                                  #' How to construct the internal validation data. This parameter can be either `NULL`,
                                  #' a ratio, `"test"`, or `"predefined"`.
                                  validate = function(rhs) {
                                    if (!missing(rhs)) {
                                      private$.validate = assert_validate(rhs)
                                    }
                                    private$.validate
                                  }
                                ),
                                private = list(
                                  .validate = NULL,
                                  .train = function(task) {

                                    pv = self$param_set$get_values(tags = "train")

                                    lvls = task$class_names
                                    nlvls = length(lvls)

                                    if (is.null(pv$objective)) {
                                      pv$objective = if (nlvls == 2L) "binary:logistic" else "multi:softprob"
                                    }

                                    if (self$predict_type == "prob" && pv$objective == "multi:softmax") {
                                      stopf("objective = 'multi:softmax' does not work with predict_type = 'prob'")
                                    }

                                    switch(pv$objective,
                                           "multi:softprob" =,
                                           "multi:softmax" = {
                                             # add the number of classes 'num_class'
                                             pv$num_class = nlvls

                                             # we have to set this to avoid a deprecation warning
                                             if (is.null(pv$feval)) pv$eval_metric = pv$eval_metric %??% "mlogloss"
                                           },

                                           "binary:logistic" = {
                                             if (is.null(pv$feval)) pv$eval_metric = pv$eval_metric %??% "logloss"
                                           }
                                    )

                                    data = task$data(cols = task$feature_names)
                                    # recode to 0:1 so that for the binary case the positive class translates to 1 (#32)
                                    # note that task$truth() is guaranteed to have the factor levels in the right order
                                    label = nlvls - as.integer(task$truth())
                                    xgb_data = xgboost::xgb.DMatrix(data = as_numeric_matrix(data), label = label)

                                    if ("weights" %in% task$properties) {
                                      xgboost::setinfo(xgb_data, "weight", task$weights$weight)
                                    }

                                    if ("offset" %in% task$properties) {
                                      offset = task$offset
                                      if (nlvls == 2L) {
                                        # binary case
                                        base_margin = offset$offset
                                      } else {
                                        # multiclass needs a matrix (n_samples, n_classes)
                                        # it seems reasonable to reorder according to label (0,1,2,...)
                                        reordered_cols = paste0("offset_", rev(levels(task$truth())))
                                        n_offsets = ncol(offset) - 1 # all expect `row_id`
                                        if (length(reordered_cols) != n_offsets) {
                                          stopf("Task has %i class labels, and only %i offset columns are provided",
                                                nlevels(task$truth()), n_offsets)
                                        }
                                        base_margin = as_numeric_matrix(offset)[, reordered_cols]
                                      }
                                      xgboost::setinfo(xgb_data, "base_margin", base_margin)
                                    }

                                    # the last element in the watchlist is used as the early stopping set
                                    internal_valid_task = task$internal_valid_task
                                    if (!is.null(pv$early_stopping_rounds) && is.null(internal_valid_task)) {
                                      stopf("Learner (%s): Configure field 'validate' to enable early stopping.", self$id)
                                    }

                                    if (!is.null(internal_valid_task)) {
                                      valid_data = internal_valid_task$data(cols = internal_valid_task$feature_names)
                                      valid_label = nlvls - as.integer(internal_valid_task$truth())
                                      xgb_valid_data = xgboost::xgb.DMatrix(data = as_numeric_matrix(valid_data), label = valid_label)

                                      if ("weights" %in% internal_valid_task$properties) {
                                        xgboost::setinfo(xgb_valid_data, "weight", internal_valid_task$weights$weight)
                                      }

                                      if ("offset" %in% internal_valid_task$properties) {
                                        valid_offset = internal_valid_task$offset
                                        if (nlvls == 2L) {
                                          base_margin = valid_offset$offset
                                        } else {
                                          # multiclass needs a matrix (n_samples, n_classes)
                                          # it seems reasonable to reorder according to label (0,1,2,...)
                                          reordered_cols = paste0("offset_", rev(levels(internal_valid_task$truth())))
                                          base_margin = as_numeric_matrix(valid_offset)[, reordered_cols]
                                        }
                                        xgboost::setinfo(xgb_valid_data, "base_margin", base_margin)
                                      }

                                      pv$watchlist = c(pv$watchlist, list(test = xgb_valid_data))
                                    }

                                    # set internal validation measure
                                    if (inherits(pv$eval_metric, "Measure")) {
                                      n_classes = length(task$class_names)
                                      measure = pv$eval_metric

                                      fun = if (pv$objective == "binary:logistic" && measure$predict_type == "prob" && inherits(measure, "MeasureBinarySimple")) {
                                        xgboost_binary_binary_prob
                                      } else if (pv$objective == "binary:logistic" && measure$predict_type == "prob" && inherits(measure, "MeasureClassifSimple")) {
                                        xgboost_binary_classif_prob
                                      } else if (pv$objective == "binary:logistic" && measure$predict_type == "response") {
                                        xgboost_binary_response
                                      } else if (pv$objective == "multi:softprob" && measure$predict_type == "prob") {
                                        xgboost_multiclass_prob
                                      } else if (pv$objective %in% c("multi:softmax", "multi:softprob") && measure$predict_type == "response") {
                                        xgboost_multiclass_response
                                      } else {
                                        stop("Only 'binary:logistic', 'multi:softprob' and 'multi:softmax' objectives are supported.")
                                      }

                                      pv$eval_metric =  mlr3misc::crate({function(pred, dtrain) {
                                        scores = fun(pred, dtrain, measure, n_classes)
                                        list(metric = measure$id, value = scores)
                                      }}, n_classes, measure, fun)

                                      pv$maximize = !measure$minimize
                                    }

                                    invoke(xgboost::xgb.train, data = xgb_data, .args = pv)
                                  },

                                  .predict = function(task) {

                                    pv = self$param_set$get_values(tags = "predict")
                                    model = self$model
                                    response = prob = NULL
                                    lvls = rev(task$class_names)
                                    nlvls = length(lvls)

                                    if (is.null(pv$objective)) {
                                      pv$objective = ifelse(nlvls == 2L, "binary:logistic", "multi:softprob")
                                    }

                                    newdata = as_numeric_matrix(ordered_features(task, self))
                                    pred = invoke(predict, model, newdata = newdata, .args = pv)

                                    if (nlvls == 2L) { # binaryclass
                                      if (pv$objective == "multi:softprob") {
                                        prob = matrix(pred, ncol = nlvls, byrow = TRUE)
                                        colnames(prob) = lvls
                                      } else {
                                        prob = pvec2mat(pred, lvls)
                                      }
                                    } else { # multiclass
                                      if (pv$objective == "multi:softmax") {
                                        response = lvls[pred + 1L]
                                      } else {
                                        prob = matrix(pred, ncol = nlvls, byrow = TRUE)
                                        colnames(prob) = lvls
                                      }
                                    }

                                    if (!is.null(response)) {
                                      list(response = response)
                                    } else if (self$predict_type == "response") {
                                      i = max.col(prob, ties.method = "random")
                                      list(response = factor(colnames(prob)[i], levels = lvls))
                                    } else {
                                      list(prob = prob)
                                    }
                                  },

                                  .hotstart = function(task) {
                                    model = self$model
                                    pars = self$param_set$get_values(tags = "train")
                                    pars_train = self$state$param_vals
                                    if (!is.null(pars_train$early_stopping_rounds)) {
                                      stopf("The parameter `early_stopping_rounds` is set. Early stopping and hotstarting are incompatible.")
                                    }

                                    # Calculate additional boosting iterations
                                    # niter in model and nrounds in ps should be equal after train and continue
                                    pars$nrounds = pars$nrounds - pars_train$nrounds

                                    # Construct data
                                    nlvls = length(task$class_names)
                                    data = task$data(cols = task$feature_names)
                                    label = nlvls - as.integer(task$truth())
                                    data = xgboost::xgb.DMatrix(data = as_numeric_matrix(data), label = label)

                                    invoke(xgboost::xgb.train, data = data, xgb_model = model, .args = pars)
                                  },

                                  .extract_internal_tuned_values = function() {
                                    if (is.null(self$state$param_vals$early_stopping_rounds)) {
                                      return(NULL)
                                    }
                                    list(nrounds = self$model$best_iteration)
                                  },

                                  .extract_internal_valid_scores = function() {
                                    if (is.null(self$model$evaluation_log)) {
                                      NULL
                                    }
                                    iter = if (!is.null(self$model$best_iteration)) self$model$best_iteration else self$model$niter
                                    as.list(self$model$evaluation_log[
                                      iter,
                                      set_names(get(".SD"), gsub("^test_", "", colnames(get(".SD")))),
                                      .SDcols = patterns("^test_")
                                    ])
                                  }
                                )
)


#' @export
default_values.LearnerClassifXgboost = function(x, search_space, task, ...) { # nolint
  special_defaults = list(
    nrounds = 1L
  )
  defaults = insert_named(default_values(x$param_set), special_defaults)
  defaults[search_space$ids()]
}

#' @include aaa.R
learners[["classif.xgboost"]] = LearnerClassifXgboost

# mlr3 measure to custom inner measure functions
xgboost_binary_binary_prob = function(pred, dtrain, measure, ...) {
  # label is a vector of labels (0, 1)
  truth = factor(xgboost::getinfo(dtrain, "label"), levels = c(0, 1))
  # pred is a vector of log odds
  # transform log odds to probabilities
  pred = 1 / (1 + exp(-pred))
  measure$fun(truth, pred, positive = "1")
}

xgboost_binary_classif_prob = function(pred, dtrain, measure, ...) {
  # label is a vector of labels (0, 1)
  truth = factor(xgboost::getinfo(dtrain, "label"), levels = c(0, 1))
  # pred is a vector of log odds
  # transform log odds to probabilities
  pred = 1 / (1 + exp(-pred))
  # multiclass measure needs a matrix of probabilities
  pred_mat = matrix(c(pred, 1 - pred), ncol = 2)
  colnames(pred_mat) = c("1", "0")
  measure$fun(truth, pred_mat, positive = "1")
}

xgboost_binary_response = function(pred, dtrain, measure, ...) {
  # label is a vector of labels (0, 1)
  truth = factor(xgboost::getinfo(dtrain, "label"), levels = c(0, 1))
  # pred is a vector of log odds
  response = factor(as.integer(pred > 0), levels = c(0, 1))
  measure$fun(truth, response)
}

xgboost_multiclass_prob = function(pred, dtrain, measure, n_classes, ...) {
  # label is a vector of labels (0, 1, ..., n_classes - 1)
  truth = factor(xgboost::getinfo(dtrain, "label"), levels = seq_len(n_classes) - 1L)

  # pred is a vector of log odds for each class
  # matrix must be filled by row
  pred_mat = matrix(pred, ncol = n_classes, byrow = TRUE)
  # transform log odds to probabilities
  pred_exp = exp(pred_mat)
  pred_mat = pred_exp / rowSums(pred_exp)
  colnames(pred_mat) = levels(truth)

  measure$fun(truth, pred_mat)
}

xgboost_multiclass_response = function(pred, dtrain, measure, n_classes, ...) {
  # label is a vector of labels (0, 1, ..., n_classes - 1)
  truth = factor(xgboost::getinfo(dtrain, "label"), levels = seq_len(n_classes) - 1L)

  # pred is a vector of log odds for each class
  # matrix must be filled by row
  pred_mat = matrix(pred, ncol = n_classes, byrow = TRUE)

  response = factor(max.col(pred_mat, ties.method = "random") - 1, levels = levels(truth))
  measure$fun(truth, response)
}