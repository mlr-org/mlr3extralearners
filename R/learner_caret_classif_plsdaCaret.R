#' @title Partial Least Squares Discriminant Analysis Learner
#' @author awinterstetter
#' @name mlr_learners_classif.plsdaCaret
#'
#' @description
#' Partial Least Squares Discriminant Analysis for classification.
#' Calls [caret::plsda()] from \CRANpkg{caret}.
#'
#' @templateVar id classif.plsdaCaret
#' @template learner
#'
#' @references
#' `r format_bib(c("kuhn2008caret", "mevik_2007"))`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifPlsdaCaret = R6Class("LearnerClassifPlsdaCaret",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        ncomp = p_int(default = 2L, lower = 1L, tags = "train"),
        probMethod = p_fct(default = "softmax", levels = c("softmax", "Bayes"), tags = "train"),
        method = p_fct(default = "kernelpls", levels = c("kernelpls", "widekernelpls", "simpls", "oscorespls"), tags = "train")
      )

      super$initialize(
        id = "classif.plsdaCaret",
        packages = c("caret", "pls"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.plsdaCaret",
        label = "Partial Least Squares Discriminant Analysis"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      x = task$data(cols = task$feature_names)
      y = task$truth()

      invoke(
        caret::plsda.default,
        x = x,
        y = y,
        .args = pars
      )
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      newdata = ordered_features(task, self)
      pred_type = if (self$predict_type == "response") "class" else "prob"

      pred = invoke(
        predict,
        self$model,
        newdata = newdata,
        type = pred_type,
        .args = pars
      )

      if (pred_type == "prob") {
        if (is.array(pred) && length(dim(pred)) == 3L) {
          pred = array(c(pred), dim(pred)[-3], dimnames = dimnames(pred)[1:2])
        } else {
          pred = as.matrix(pred)
        }
        list(prob = pred)
      } else {
        list(response = pred)
      }
    }
  )
)

.extralrns_dict$add("classif.plsdaCaret", LearnerClassifPlsdaCaret)
