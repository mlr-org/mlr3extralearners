#' @title Principal Component Regression Learner
#' @author awinterstetter
#' @name mlr_learners_regr.pcr
#'
#' @description
#' Principal Component Regression model.
#' Calls [pls::pcr()] from \CRANpkg{pls}.
#'
#' @section Initial parameter values:
#' - `model`
#'   - Actual default: `TRUE`
#'   - Adjusted default: `FALSE`
#'   - Reason for change: keeps model objects compact because predictions do not
#'     require the stored model frame.
#'
#' @templateVar id regr.pcr
#' @template learner
#'
#' @references
#' `r format_bib("jolliffe1982note")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrPcr = R6Class("LearnerRegrPcr",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ncomp = p_int(lower = 1L, tags = "train"),
        method = p_fct(
          levels = c("kernelpls", "widekernelpls", "simpls", "oscorespls", "cppls", "svdpc"),
          default = "cppls",
          tags = "train"
        ),
        scale = p_lgl(default = FALSE, tags = "train"),
        model = p_lgl(default = TRUE, tags = "train"),
        x = p_lgl(default = FALSE, tags = "train"),
        y = p_lgl(default = FALSE, tags = "train")
      )
      param_set$set_values(model = FALSE)

      super$initialize(
        id = "regr.pcr",
        packages = c("mlr3extralearners", "pls"),
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = "response",
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.pcr",
        label = "Principal Component Regression"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      formula = task$formula()
      data = task$data(cols = c(task$feature_names, task$target_names))

      invoke(pls::pcr,
        formula = formula,
        data = data,
        .args = pars
      )
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      pred = invoke(predict,
        self$model,
        newdata = newdata,
        type = "response",
        .args = pars
      )

      if (is.array(pred) && length(dim(pred)) == 3L) {
        response = pred[, 1L, dim(pred)[3L]]
      } else if (is.matrix(pred)) {
        response = pred[, 1L]
      } else {
        response = as.numeric(pred)
      }

      list(response = as.numeric(response))
    }
  )
)

.extralrns_dict$add("regr.pcr", LearnerRegrPcr)
