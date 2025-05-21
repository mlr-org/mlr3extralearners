#' @title Classification Linear Discriminant Analysis Learner
#' @author annanzrv
#' @name mlr_learners_classif.sdlda
#'
#' @description
#' Shrinkage-based Diagonal Linear Discriminant Analysis classfier.
#' Type of Naive Bayes classifiers that improves the estimation of the pooled variances by
#' using a shrinkage-based estimator of the pooled covariance matrix.
#' Calls [sparsediscrim::lda_shrink_cov()] \CRANpkg{sparsediscrim}.
#'
#' @templateVar id classif.sdlda
#' @template learner
#'
#' @references
#' `r format_bib("Peng2009sdlda")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifSdlda = R6Class("LearnerClassifSdlda",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        num_alphas = p_int(default = 101, tags = "train"),
        prior      = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "classif.sdlda",
        packages = "sparsediscrim",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.sdlda",
        label = "Shrinkage-based Diagonal Linear Discriminant Analysis"
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
        sparsediscrim::lda_shrink_cov,
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

.extralrns_dict$add("classif.sdlda", LearnerClassifSdlda)
