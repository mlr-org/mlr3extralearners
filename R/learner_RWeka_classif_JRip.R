#' @title Classification JRip Learner
#' @author henrifnk
#' @name mlr_learners_classif.JRip
#'
#' @description
#' Repeated Incremental Pruning to Produce Error Reduction.
#' Calls [RWeka::JRip()] from \CRANpkg{RWeka}.
#'
#' @template learner
#' @templateVar id classif.JRip
#'
#' @section Parameter changes:
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
#' `r format_bib("cohen1995fast")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifJRip = R6Class("LearnerClassifJRip",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        subset = p_uty(tags = "train"),
        na.action = p_uty(tags = "train"),
        F = p_int(default = 3L, lower = 2L, tags = "train"),
        N = p_dbl(default = 2, lower = 0, tags = "train"),
        O = p_int(default = 2L, lower = 1L, tags = "train"),
        D = p_lgl(default = FALSE, tags = "train"),
        S = p_int(default = 1L, lower = 1L, tags = "train"),
        E = p_lgl(default = FALSE, tags = "train"),
        P = p_lgl(default = FALSE, tags = "train"),
        output_debug_info = p_lgl(default = FALSE, tags = "train"),
        do_not_check_capabilities = p_lgl(default = FALSE,
          tags = "train"),
        num_decimal_places = p_int(default = 2L, lower = 1L,
          tags = "train"),
        batch_size = p_int(default = 100L, lower = 1L, tags = "train"),
        options = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "classif.JRip",
        packages = c("mlr3extralearners", "RWeka"),
        feature_types = c("numeric", "factor", "ordered", "integer"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.JRip",
        label = "Propositional Rule Learner."
      )
    }
  ),

  private = list(
    .train = function(task) {
      params = self$param_set$get_values(tags = "train")
      ctrl_arg_names = weka_control_args(RWeka::JRip)
      arg_names = setdiff(names(params), ctrl_arg_names)
      ctrl = params[which(names(params) %in% ctrl_arg_names)]
      pars = params[which(names(params) %nin% ctrl_arg_names)]

      if (length(ctrl) > 0L) {
        names(ctrl) = gsub("_", replacement = "-", x = names(ctrl))
        ctrl = invoke(RWeka::Weka_control, .args = ctrl)
      }

      f = task$formula()
      data = task$data()
      invoke(RWeka::JRip, formula = f, data = data, control = ctrl, .args = pars)
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

.extralrns_dict$add("classif.JRip", LearnerClassifJRip)
