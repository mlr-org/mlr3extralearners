#' @title L2-Regularized L2-Loss Support Vector Classification Learner
#' @author be-marc
#' @name mlr_learners_classif.liblinearl2l2svc
#'
#' @template class_learner
#' @templateVar id classif.liblinearl2l2svc
#' @templateVar caller LiblineaR
#'
#' @details Calls [LiblineaR::LiblineaR()] with `type = 1` or `type = 2`.
#'
#' @details
#' If number of records > number of features, `type = 2` is faster than `type = 1`
#' (Hsu et al. 2003).
#'
#'  The default for `epsilon` is set to match `type = 2`. If you change to
#'  `type = 1` remember to eventually adjust the value for `epsilon` (default
#'  = 0.1).
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifLiblineaRL2L2SVC = R6Class("LearnerClassifLiblineaRL2L2SVC", # nolint
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      warning("Deprecated. In the future please use `classif.liblinear` with `type = 1` or `2`.") # nolint

      ps = ParamSet$new(
        params = list(
          ParamDbl$new(id = "cost", default = 1, lower = 0, tags = "train"),
          ParamDbl$new(
            id = "epsilon", default = 0.01, special_vals = list(NULL),
            lower = 0, tags = "train"),
          ParamDbl$new(id = "bias", default = 1, tags = "train"),
          ParamFct$new(id = "type", default = "2", levels = c("1", "2"), tags = "train"),
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

      if (!is.null(ps$values$type) && ps$values$type == "1") {
        cat("yes")
        ps$values$epsilon = 0.1
      }

      super$initialize(
        id = "classif.liblinearl2l2svc",
        packages = "LiblineaR",
        feature_types = "numeric",
        predict_types = "response",
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.liblinearl2l2svc"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = task$data()
      train = task$data(cols = task$feature_names)
      target = task$truth()

      if (is.null(pars$type)) {
        type = 1
      } else {
        type = as.numeric(pars$type)
      }
      pars = pars[names(pars) != "type"]

      mlr3misc::invoke(LiblineaR::LiblineaR, data = train, target = target,
       type = type, .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      p = invoke(predict, self$model, newx = newdata)
      list(response = p$predictions)
    }
  )
)

.extralrns_dict$add("classif.liblinearl2l2svc", LearnerClassifLiblineaRL2L2SVC)
