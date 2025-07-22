#' @title Shrinkage Discriminant Analysis
#' @author annanzrv
#' @name mlr_learners_classif.sda
#'
#' @description
#' Shrinkage Discriminant Analysis for classification.
#' Calls [sda::sda()] from \CRANpkg{sda}.
#'
#' @templateVar id classif.sda
#' @template learner
#'
#' @references
#' `r format_bib("ahdesmaki2010sda")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifSda = R6Class("LearnerClassifSda",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        lambda       = p_dbl(lower = 0, upper = 1, tags = "train"),
        lambda.var   = p_dbl(lower = 0, upper = 1, tags = "train"),
        lambda.freqs = p_dbl(lower = 0, upper = 1, tags = "train"),
        diagonal     = p_lgl(default = FALSE, tags = "train"),
        verbose      = p_lgl(default = FALSE, tags = "train")
      )
      super$initialize(
        id = "classif.sda",
        packages = "sda",
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.sda",
        label = "Shrinkage Discriminant Analysis"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      target = task$truth()
      cols = task$feature_names
      data = task$data()
      mat = as.matrix(data[, cols, with = FALSE])

      invoke(
        sda::sda,
        Xtrain = mat,
        L = target,
        .args = pars
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      # Calculate predictions for the selected predict type.
      type = self$predict_type

      p = invoke(predict, self$model, Xtest = as.matrix(newdata), .args = pars)

      if (type == "response") {
        list(response = p$class)
      } else {
        list(prob = p$posterior)
      }
    }
  )
)

.extralrns_dict$add("classif.sda", LearnerClassifSda)
