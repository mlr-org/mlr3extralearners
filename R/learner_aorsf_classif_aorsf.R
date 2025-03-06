#' @title Oblique Random Forest Classifier
#' @author annanzrv
#' @name mlr_learners_classif.aorsf
#'
#' @description
#' Imbalanced Random forest for classification between two classes.
#' Calls [aorsf::orsf()] from \CRANpkg{aorsf}.
#'
#'
#'
#' @template seealso_learner
#' @examplesIf requireNamespace("randomForestSRC", quietly = TRUE)
#' # Define the Learner
#' learner = mlr3::lrn("classif.imbalanced_rfsrc", importance = "TRUE")
#' print(learner)
#'
#' # Define a Task
#' task = mlr3::tsk("sonar")
#' # Create train and test set
#' ids = mlr3::partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' print(learner$model)
#' print(learner$importance())
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
#'
#' @export
LearnerClassifObliqueRandomForest = R6Class("LearnerClassifObliqueRandomForest",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        n_tree = p_int(default = 500L, lower = 1L, tags = "train"),
        n_split = p_int(default = 5L, lower = 1L, tags = "train"),
        n_retry = p_int(default = 3L, lower = 0L, tags = "train"),
        n_thread = p_int(default = 0, lower = 0, tags = c("train", "predict", "threads")),
        pred_aggregate = p_lgl(default = TRUE, tags = "predict"),
        pred_simplify = p_lgl(default = FALSE, tags = "predict"),
        oobag = p_lgl(default = FALSE, tags = "predict"),
        mtry = p_int(default = NULL, lower = 1L, special_vals = list(NULL), tags = "train"),
        mtry_ratio = p_dbl(lower = 0, upper = 1, tags = "train"),
        sample_with_replacement = p_lgl(default = TRUE, tags = "train"),
        sample_fraction = p_dbl(lower = 0, upper = 1, default = .632, tags = "train"),
        split_rule = p_fct(levels = c("gini", "cstat"), default = "gini", tags = "train"),
        control_method = p_fct(levels = c("glm", "net", "pca", "random"), default = "glm", tags = "train"),
        control_do_scale = p_lgl(default = FALSE, tags = "train"),
        control_eps = p_dbl(default = 1e-9, lower = 0, tags = "train"),
        control_iter_max = p_int(default = 20L, lower = 1, tags = "train"),
        control_net_mix = p_dbl(default = 0.5, tags = "train"),
        control_df_target = p_int(default = NULL, lower = 1L,
                                  special_vals = list(NULL),
                                  tags = "train"),
        leaf_min_events = p_int(default = 1L, lower = 1L, tags = "train"),
        leaf_min_obs = p_int(default = 5L, lower = 1L, tags = "train"),
        split_min_events = p_int(default = 5L, lower = 1L, tags = "train"),
        split_min_obs = p_int(default = 10, lower = 1L, tags = "train"),
        split_min_stat = p_dbl(default = NULL, special_vals = list(NULL), lower = 0, tags = "train"),
        oobag_pred_type = p_fct(levels = c("none", "leaf", "prob", "class"), default = "prob", tags = "train"),
        importance = p_fct(levels = c("none", "anova", "negate", "permute"), default = "anova", tags = "train"),
        importance_max_pvalue = p_dbl(default = 0.01, lower = 0.0001, upper = .9999, tags = "train"),
        tree_seeds = p_int(default = NULL, lower = 1L, special_vals = list(NULL), tags = "train"),
        #oobag_pred_horizon = p_dbl(default = NULL, special_vals = list(NULL), tags = "train", lower = 0),
        oobag_eval_every = p_int(default = NULL, special_vals = list(NULL), lower = 1, tags = "train"),
        oobag_fun = p_uty(default = NULL, special_vals = list(NULL), tags = "train",
                          custom_check = function(x) checkmate::checkFunction(x, nargs = 3)),
        attach_data = p_lgl(default = TRUE, tags = "train"),
        verbose_progress = p_lgl(default = FALSE, tags = "train"),
        na_action = p_fct(levels = c("fail", "omit", "impute_meanmode"), default = "fail", tags = "train"))

        ps$values = list(n_thread = 1)

      super$initialize(
        id = "classif.aorsf",
        packages = c("mlr3extralearners", "aorsf"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("oob_error", "importance", "multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.aorsf",
        label = "Oblique Random Forest Classifier"
      )
    },

    #' @description
    #' OOB concordance error extracted from the model slot
    #' `eval_oobag$stat_values`
    #' @return `numeric()`.
    oob_error = function() {
      nrows = nrow(self$model$eval_oobag$stat_values)
      1 - self$model$eval_oobag$stat_values[nrows, 1L]
    },

    #' @description
    #' The importance scores are extracted from the model.
    #' @return Named `numeric()`.
    importance = function() {
      if (is.null(self$model)) {
        stopf("No model stored")
      }
      sort(aorsf::orsf_vi(self$model, group_factors = TRUE),
           decreasing = TRUE)
    }
  ),

  private = list(
    .train = function(task) {
      # initialize
      pv = self$param_set$get_values(tags = "train")
      pv = convert_ratio(pv, "mtry", "mtry_ratio",
                         length(task$feature_names))
      # helper function to organize aorsf control function inputs
      dflt_if_null = function(params, slot_name) {
        out = params[[slot_name]]
        if (is.null(out)) out <- self$param_set$default[[slot_name]]
        out
      }
      # default value for oobag_eval_every is ntree, but putting
      # default = ntree in p_int() above would be problematic, so:
      if (is.null(pv$oobag_eval_every)) {
        pv$oobag_eval_every = dflt_if_null(pv, "n_tree")
      }
      control = aorsf::orsf_control_classification(
        method = dflt_if_null(pv, "control_method"),
        scale_x = dflt_if_null(pv, "control_do_scale"),
        net_mix = dflt_if_null(pv, "control_net_mix"),
        target_df = dflt_if_null(pv, "control_df_target"),
        max_iter = dflt_if_null(pv, "control_iter_max"),
        epsilon = dflt_if_null(pv, "control_cph_eps"),
      )
      # these parameters are used to organize the control arguments
      # above but are not used directly by aorsf::orsf(), so:
      pv = remove_named(pv, c("control_method",
                              "control_do_scale",
                              "control_fast_ties",
                              "control_net_mix",
                              "control_df_target",
                              "control_iter_max",
                              "control_cph_eps"))
      invoke(
        aorsf::orsf,
        data = task$data(),
        formula = task$formula(),
        weights = task$weights,
        control = control,
        no_fit = FALSE,
        .args = pv
      )
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      type = ifelse(self$predict_type == "response", "response", "prob")

      pred = invoke(predict, self$model,
                    newdata = newdata,
                    type = type, .args = pars)

      if (self$predict_type == "response") {
        list(response = unname(pred))
      } else {
        list(prob = pred)
      }
    }
  )
)

.extralrns_dict$add("classif.aorsf", LearnerClassifObliqueRandomForest)
