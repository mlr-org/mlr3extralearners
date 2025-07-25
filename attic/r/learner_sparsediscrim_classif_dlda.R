#' @title Classification Diagonal Linear Discriminant Analysis Learner
#' @author annanzrv
#' @name mlr_learners_classif.dlda
#'
#' @description
#' Diagonal Linear Discriminant Analysis classifier.
#' Belongs to the family of Naive Bayes classifiers, where the distributions of
#' each class are assumed to be multivariate normal and to share a common
#' covariance matrix. Off-diagonal elements of the pooled sample covariance matrix
#' are set to zero
#' Calls [sparsediscrim::lda_diag()] from \CRANpkg{sparsediscrim}.
#'
#'
#' @templateVar id classif.dlda
#' @template learner
#'
#' @references
#' `r format_bib("Dudoit2002")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifDiagLda = R6Class("LearnerClassifDiagLda",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        prior = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "classif.dlda",
        packages = "sparsediscrim",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.dlda",
        label = "Diagonal Linear Discriminant Analysis"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      formula = task$formula()
      data = task$data()

      invoke(
        sparsediscrim::lda_diag,
        formula = formula,
        data = data,
        .args = pars
      )
    },
    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type.
      type = self$predict_type
      if (type == "response") type = "class"

      pred = invoke(predict, self$model, newdata = newdata, type = type, .args = pars)
      if (type == "prob") pred = as.matrix(pred)
      setNames(list(pred), self$predict_type)
    }
  )
)

.extralrns_dict$add("classif.dlda", LearnerClassifDiagLda)
