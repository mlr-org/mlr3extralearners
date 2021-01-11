#' @title Classification C5.0 Learner
#' @author henrifnk
#' @name mlr_learners_classif.C50
#' @template class_learner
#' @templateVar id classif.C50
#' @templateVar caller C5.0
#'
#' @references
#' Quinlan R (1993).
#' C4.5: Programs for Machine Learning
#' \url{http://www.rulequest.com/see5-unix.html}
#'
#' @export
LearnerClassifC50 = R6Class("LearnerClassifC50",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamInt$new(
            id = "trials", default = 1L, lower = 1L,
            tags = c("train", "pars", "predict")),
          ParamLgl$new(id = "rules", default = FALSE, tags = c("train", "pars")),
          ParamLgl$new(id = "subset", default = TRUE, tags = c("train", "C5.0Control")),
          ParamInt$new(id = "bands", lower = 0, upper = 1000L, tags = c("train", "C5.0Control")),
          ParamLgl$new(id = "winnow", default = FALSE, tags = c("train", "C5.0Control")),
          ParamLgl$new(id = "noGlobalPruning", default = FALSE, tags = c("train", "C5.0Control")),
          ParamDbl$new(
            id = "CF", default = 0.25, lower = 0, upper = 1,
            tags = c("train", "C5.0Control")),
          ParamInt$new(
            id = "minCases", default = 2L, lower = 0L, upper = Inf,
            tags = c("train", "C5.0Control")),
          ParamLgl$new(
            id = "fuzzyThreshold", default = FALSE,
            tags = c("train", "C5.0Control")),
          ParamDbl$new(
            id = "sample", default = 0, lower = 0, upper = .999,
            tags = c("train", "C5.0Control")),
          ParamInt$new(id = "seed", lower = -Inf, upper = Inf, tags = c("train", "C5.0Control")),
          ParamLgl$new(id = "earlyStopping", default = TRUE, tags = c("train", "C5.0Control")),
          ParamUty$new(id = "label", default = "outcome", tags = c("train", "C5.0Control")),
          ParamUty$new(id = "na.action", default = stats::na.pass, tags = "predict")
        )
      )
      ps$add_dep("bands", "rules", CondEqual$new(TRUE))

      super$initialize(
        id = "classif.C50",
        packages = "C50",
        feature_types = c("numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass", "missings", "weights"),
        man = "mlr3extralearners::mlr_learners_classif.C50"
      )
    }
  ),


  private = list(
    .train = function(task) {
      c5control = do.call(
        C50::C5.0Control,
        self$param_set$get_values(tags = "C5.0Control")
      )

      pars = self$param_set$get_values(tags = "pars")
      f = task$formula()
      data = task$data()
      invoke(C50::C5.0.formula, formula = f, data = data, control = c5control, .args = pars)
    },

    .predict = function(task) {
      response = NULL
      prob = NULL
      pars = self$param_set$get_values(tags = "predict")
      newdata = task$data(cols = task$feature_names)

      if (self$predict_type == "response") {
        response = invoke(predict, self$model,
          newdata = newdata,
          type = "class", .args = pars
        )
      } else {
        prob = invoke(predict, self$model,
          newdata = newdata,
          type = "prob", .args = pars
        )
      }

      list(response = response, prob = prob)
    }
  )
)

.extralrns_dict$add("classif.C50", LearnerClassifC50)
