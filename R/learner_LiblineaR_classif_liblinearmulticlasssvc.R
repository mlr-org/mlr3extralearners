#' @title Support Vector Classification Learner
#' @author be-marc
#' @name mlr_learners_classif.liblinearmulticlasssvc
#'
#' @template class_learner
#' @templateVar id classif.liblinearmulticlasssvc
#' @templateVar caller LiblineaR
#'
#' @details Calls [LiblineaR::LiblineaR()] with `type = 4`.
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
LearnerClassifLiblineaRMultiClassSVC = R6Class("LearnerClassifLiblineaRMultiClassSVC", # nolint
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      warning("Deprecated. In the future please use `classif.liblinear` with `type = 4`.") # nolint

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
        id = "classif.liblinearmulticlasssvc",
        packages = "LiblineaR",
        feature_types = "numeric",
        predict_types = c("response"),
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.liblinearmulticlasssvc"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = task$data()
      train = task$data(cols = task$feature_names)
      target = task$truth()

      invoke(LiblineaR::LiblineaR, data = train, target = target, type = 4L, .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      p = invoke(predict, self$model, newx = newdata)
      list(response = p$predictions)
    }
  )
)

.extralrns_dict$add("classif.liblinearmulticlasssvc", LearnerClassifLiblineaRMultiClassSVC)
