#' @title Classification Logistic Model Trees Learner
#' @author henrifnk
#' @name mlr_learners_classif.LMT
#'
#' @description
#' Classification tree with logistic regression models at the leaves.
#' Calls [RWeka::LMT()] from \CRANpkg{RWeka}.
#'
#' @template learner
#' @templateVar id classif.LMT
#'
#' @section Initial parameter values:
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
#' - Reason for change: This learner contains changed ids of the following control arguments
#' since their ids contain irregular pattern
#'
#' @references
#' `r format_bib("landwehr2005logistic")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifLMT = R6Class("LearnerClassifLMT",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        B = p_lgl(default = FALSE, tags = "train"),
        R = p_lgl(default = FALSE, tags = "train"),
        C = p_lgl(default = FALSE, tags = "train"),
        P = p_lgl(default = FALSE, tags = "train"),
        I = p_int(lower = 1L, tags = "train"),
        M = p_int(default = 15L, lower = 1L, tags = "train"),
        W = p_dbl(default = 0, lower = 0, upper = 1, tags = "train"),
        A = p_lgl(default = FALSE, tags = "train"),
        doNotMakeSplitPointActualValue = p_lgl(default = FALSE,
          tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
          tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )
      ps$add_dep("I", "C", CondEqual$new(FALSE))
      super$initialize(
        id = "classif.LMT",
        packages = c("mlr3extralearners", "RWeka"),
        feature_types = c("numeric", "factor", "ordered", "integer"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.LMT",
        label = "Tree-based Model"
      )
    }
  ),

  private = list(
    .train = function(task) {
      params = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(RWeka::LMT)
      arg_names = setdiff(names(params), ctrl_arg_names)
      ctrl = params[which(names(params) %in% ctrl_arg_names)]
      pars = params[which(names(params) %nin% ctrl_arg_names)]

      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = invoke(RWeka::Weka_control, .args = ctrl)
      }

      f = task$formula()
      data = task$data()
      invoke(RWeka::LMT, formula = f, data = data, control = ctrl, .args = pars)
    },

    .predict = function(task) {
      response = NULL
      prob = NULL
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      if (self$predict_type == "response") {
        response = invoke(predict, self$model, newdata = newdata, type = "class",
          .args = pars
        )
      } else {
        prob = invoke(predict, self$model, newdata = newdata, type = "prob",
          .args = pars
        )
      }
      list(response = response, prob = prob)
    }
  )
)

.extralrns_dict$add("classif.LMT", LearnerClassifLMT)
