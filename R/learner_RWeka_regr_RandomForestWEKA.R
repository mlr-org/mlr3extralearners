#' @title Regression Forest Of Random Trees From Weka
#' @author damirpolat
#' @name mlr_learners_regr.RandomForestWEKA
#'
#' @description
#' Class for constructing a forest of random trees
#' Calls [RWeka::make_Weka_classifier()] from \CRANpkg{RWeka}
#'
#' @section Custom mlr3 parameters:
#' - `output_debug_info`:
#'   - original id: output-debug-info
#'
#' - `do_not_check_capabilities`:
#'   - original id: do-not-check-capabilities
#'
#' - `num_decimal_places`:
#'   - original id: num-decimal-places
#'
#' - `batch_size`:
#'   - original id: batch-size
#'
#' - `store_out_of_bag_predictions`:
#'   - original id: store-out-of-bag-predictions
#'
#' - `output_out_of_bag_complexity_statistics`:
#'   - original id: output-out-of-bag-complexity-statistics
#'
#' - `num_slots`:
#'   - original id: num-slots
#'
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#' - `attribute-importance` removed:
#'   - Compute and output attribute importance (mean impurity decrease method)
#'
#' - Reason for change: The parameter is removed because it's unclear how to actually use it.
#'
#'
#' @templateVar id regr.RandomForestWEKA
#' @template learner
#'
#' @references
#' `r format_bib(breiman_2001)`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrRandomForestWEKA = R6Class("LearnerRegrRandomForestWEKA",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        P = p_dbl(default = 100L, lower = 0L, upper = 100L, tags = "train"),
        O = p_lgl(default = FALSE, tags = "train"),
        store_out_of_bag_predictions = p_lgl(default = FALSE, tags = "train"),
        output_out_of_bag_complexity_statistics = p_lgl(default = FALSE, tags = "train"),
        print = p_lgl(default = FALSE, tags = "train"),
        I = p_int(default = 100L, lower = 1L, tags = "train"),
        num_slots = p_int(default = 1L, tags = "train"),
        K = p_int(default = 0L, tags = "train"),
        M = p_int(default = 1L, lower = 1L, tags = "train"),
        V = p_dbl(default = 1e-3, tags = "train"),
        S = p_int(default = 1L, tags = "train"),
        depth = p_int(default = 0L, lower = 0L, tags = "train"),
        N = p_int(default = 0L, tags = "train"),
        U = p_lgl(default = FALSE, tags = "train"),
        B = p_lgl(default = FALSE, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
          tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "regr.RandomForestWEKA",
        packages = "RWeka",
        feature_types = c("logical", "integer", "numeric", "factor", "ordered"),
        predict_types = c("response"),
        param_set = param_set,
        properties = character(0L),
        man = "mlr3extralearners::mlr_learners_regr.RandomForestWEKA",
        label = "Forest Of Random Trees From Weka"
      )
    }
  ),

  private = list(
    .train = function(task) {
      weka_learner = RWeka::make_Weka_classifier("weka/classifiers/trees/RandomForest")

      pars = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(weka_learner)
      arg_names = setdiff(names(pars), ctrl_arg_names)
      ctrl = pars[which(names(pars) %in% ctrl_arg_names)]
      pars = pars[which(names(pars) %nin% ctrl_arg_names)]

      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = invoke(RWeka::Weka_control, .args = ctrl)
      }

      formula = task$formula()
      data = task$data()
      invoke(weka_learner, formula = formula, data = data, control = ctrl)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")
      response = invoke(predict, self$model, newdata = newdata, .args = pars)
      list(response = response)
    }
  )
)

.extralrns_dict$add("regr.RandomForestWEKA", LearnerRegrRandomForestWEKA)
