#' @title LiblineaR Classification Learner
#' @author be-marc
#' @name mlr_learners_classif.liblinear
#'
#' @template class_learner
#' @templateVar id classif.liblinear
#' @templateVar caller LiblineaR
#'
#' @details Type of SVC depends on `type` argument:
#'
#' * `0` – L2-regularized logistic regression (primal)
#' * `1` - L2-regularized L2-loss support vector classification (dual)
#' * `3` - L2-regularized L1-loss support vector classification (dual)
#' * `2` – L2-regularized L2-loss support vector classification (primal)
#' * `4` – Support vector classification by Crammer and Singer
#' * `5` - L1-regularized L2-loss support vector classification
#' * `6` - L1-regularized logistic regression
#' * `7` - L2-regularized logistic regression (dual)
#'
#' If number of records > number of features, `type = 2` is faster than `type = 1`
#' (Hsu et al. 2003).
#'
#' Note that probabilistic predictions are only available for types `0`, `6`, and `7`.
#'
#' The default `epsilon` value depends on the `type` parameter, see [LiblineaR::LiblineaR].
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifLiblineaR = R6Class("LearnerClassifLiblineaR", # nolint
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ParamSet$new(
        params = list(
          ParamInt$new(id = "type", default = 0, lower = 0, upper = 7, tags = "train"),
          ParamDbl$new(id = "cost", default = 1, lower = 0, tags = "train"),
          ParamDbl$new(id = "epsilon", lower = 0, tags = "train"),
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

      super$initialize(
        id = "classif.liblinear",
        packages = "LiblineaR",
        feature_types = "numeric",
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.liblinear"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = task$data()
      train = task$data(cols = task$feature_names)
      target = task$truth()

      type = ifelse(is.null(pars$type), 0, pars$type)
      pars = pars[names(pars) != "type"]

      invoke(LiblineaR::LiblineaR, data = train, target = target, type = type, .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)

      type = ifelse(is.null(self$param_set$values$type), 0, self$param_set$values$type)

      if (type %nin% c(0, 6, 7) && self$predict_type == "prob") {
        stop("'prob' predict_type only possible if `type` is `0`, `6`, or `7`.")
      }

      if (self$predict_type == "prob") {
        return(list(prob = invoke(predict, self$model, newx = newdata, proba = TRUE)$probabilities))
      } else {
        return(list(response = invoke(predict, self$model, newx = newdata)$predictions))
      }
    }
  )
)

.extralrns_dict$add("classif.liblinear", LearnerClassifLiblineaR)
