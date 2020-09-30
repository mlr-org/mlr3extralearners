#' @title L2-Regularized L1-Loss Support Vector Classification Learner
#' @author be-marc
#' @name mlr_learners_classif.liblinearl2l1svc
#'
#' @template class_learner
#' @templateVar id classif.liblinearl2l1svc
#' @templateVar caller LiblineaR
#'
#' @details Calls [LiblineaR::LiblineaR()] with `type = 3`.
#'
#' @section Custom mlr3 defaults:
#' - `epsilon`:
#'   - Actual default: 0.01
#'   - Adjusted default: 0.1
#'   - Reason for change: Param depends on param "type" which is handled
#'   internally by choosing the mlr3 learner. The default is set to the actual
#'   default of the respective "type".
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifLiblineaRL2L1SVC = R6Class("LearnerClassifLiblineaRL2L1SVC",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamDbl$new(id = "cost", default = 1, lower = 0, tags = "train"),
          ParamDbl$new(id = "epsilon", default = 0.01, lower = 0, tags = "train"),
          ParamDbl$new(id = "bias", default = 1, tags = "train"),
          ParamInt$new(id = "cross", default = 0L, lower = 0L, tags = "train"),
          ParamLgl$new(id = "verbose", default = FALSE, tags = "train"),
          ParamUty$new(id = "wi", default = NULL, tags = "train"),
          ParamLgl$new(id = "findC", default = FALSE, tags = "train"),
          ParamLgl$new(id = "useInitC", default = TRUE, tags = "train")
        )
      )
      # 50 is an arbitrary choice here
      ps$add_dep("findC", "cross", CondAnyOf$new(seq(2:50)))
      ps$add_dep("useInitC", "findC", CondEqual$new(TRUE))

      # custom defaults
      ps$values = list(
        # type dependent
        epsilon = 0.1
      )

      super$initialize(
        id = "classif.liblinearl2l1svc",
        packages = "LiblineaR",
        feature_types = "numeric",
        predict_types = "response",
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.liblinearl2l1svc"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = task$data()
      train = data[, task$feature_names, with = FALSE]
      target = data[, task$target_names, with = FALSE]

      mlr3misc::invoke(LiblineaR::LiblineaR, data = train, target = target, type = 3L, .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      p = mlr3misc::invoke(predict, self$model, newx = newdata)
      list(response = p$predictions)
    }
  )
)

lrns_dict$add("classif.liblinearl2l1svc", LearnerClassifLiblineaRL2L1SVC)
