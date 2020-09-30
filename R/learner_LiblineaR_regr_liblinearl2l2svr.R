#' @title L2-Regularized L2-Loss Support Vector Regression Learner
#' @author be-marc
#' @name mlr_learners_regr.liblinearl2l2svr
#'
#' @template class_learner
#' @templateVar id regr.liblinearl2l2svr
#' @templateVar caller LiblineaR
#'
#' @details Calls [LiblineaR::LiblineaR()] with `type = 11` or `type = 12`.
#'
#' @section Custom mlr3 defaults:
#' - `svr_eps`:
#'   - Actual default: `NULL`
#'   - Adjusted default: 0.001
#'   - Reason for change: `svr_eps` is type dependent and the "type" is handled
#'   by the mlr3learner. The default value is set to th default of the respective
#'   "type".
#' - `epsilon`:
#'   - Actual default: 0.01
#'   - Adjusted default: Removed
#'   - Reason for change: For regr SVR learners paramter `svr_eps` overwrites
#'   param `epsilon`.
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrLiblineaRL2L2SVR = R6Class("LearnerRegrLiblineaRL2L2SVR",
  inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ParamSet$new(
        params = list(
          ParamDbl$new(id = "cost", default = 1, lower = 0, tags = "train"),
          ParamDbl$new(id = "bias", default = 1, tags = "train"),
          ParamFct$new(id = "type", default = "11", levels = c("11", "12"), tags = "train"),
          ParamDbl$new(
            id = "svr_eps", default = NULL, special_vals = list(NULL),
            lower = 0, tags = "train"),
          ParamInt$new(id = "cross", default = 0L, lower = 0L, tags = "train"),
          ParamLgl$new(id = "verbose", default = FALSE, tags = "train"),
          ParamLgl$new(id = "findC", default = FALSE, tags = "train"),
          ParamLgl$new(id = "useInitC", default = TRUE, tags = "train")
        )
      )

      # 50 is an arbitrary choice here
      ps$add_dep("findC", "cross", CondAnyOf$new(seq(2:50)))
      ps$add_dep("useInitC", "findC", CondEqual$new(TRUE))

      # custom defaults
      ps$values = list(
        # Package default is NULL but for regr SVR learners takes precedence over epsilon
        svr_eps = 0.001
      )

      super$initialize(
        id = "regr.liblinearl2l1svr",
        packages = "LiblineaR",
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.liblinearl2l1svr"
      )
    }
  ),
  private = list(
    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")
      data = task$data()
      train = data[, task$feature_names, with = FALSE]
      target = data[, task$target_names, with = FALSE]

      if (is.null(pars$type)) {
        type = 11
      } else {
        type = as.numeric(pars$type)
      }
      pars = pars[names(pars) != "type"]

      invoke(LiblineaR::LiblineaR, data = train, target = target, type = type, .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      p = invoke(predict, self$model, newx = newdata)
      list(response = p$predictions)
    }
  )
)

lrns_dict$add("regr.liblinearl2l2svr", LearnerRegrLiblineaRL2L2SVR)
