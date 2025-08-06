#' @title Classification Linear Discriminant Analysis Learner
#' @author annanzrv
#' @name mlr_learners_classif.mdeb
#'
#' @description
#' Minimum Distance Empirical Bayesian classification, designed for small-sample, high-dimensional data.
#' Empirical Bayes estimator where the eigenvalues of the pooled sample covariance matrix are shrunken towards
#' the identity matrix.
#' Calls [sparsediscrim::lda_emp_bayes()] from FIXME: \CRANpkg{sparsediscrim}.
#'
#' @templateVar id classif.mdeb
#' @template learner
#'
#' @references
#' `r format_bib("Srivastava2007mdeb")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifMdeb = R6Class("LearnerClassifMdeb",
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
        man = "mlr3extralearners::mlr_learners_classif.mdeb",
        label = "Minimum Distance Empirical Bayesian Classification"
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
        sparsediscrim::lda_emp_bayes,
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

.extralrns_dict$add("classif.mdeb", LearnerClassifMdeb)
