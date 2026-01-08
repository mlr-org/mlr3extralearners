#' @title Sparse Discriminant Analysis
#' @author awinterstetter
#' @name mlr_learners_classif.sparseLDA
#'
#' @description
#' Sparse Linear Discriminant Analysis for classification.
#' Calls [sparseLDA::sda()] from \CRANpkg{sparseLDA}.
#'
#' @section Custom mlr3 parameters:
#' - `Q` is set internally to `min(n_features, n_classes - 1)` when not supplied.
#' - `stop` is not exposed because it depends on the task.
#'
#' @templateVar id classif.sparseLDA
#' @template learner
#'
#' @references
#' `r format_bib("clemmensen2011sda")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifSparseLDA = R6Class("LearnerClassifSparseLDA",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        lambda = p_dbl(default = 1e-6, lower = 0, tags = "train"),
        maxIte = p_int(default = 100L, lower = 0L, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        tol = p_dbl(default = 1e-6, lower = 0, tags = "train")
      )

      super$initialize(
        id = "classif.sparseLDA",
        packages = c("sparseLDA", "MASS", "elasticnet"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = param_set,
        properties = c("multiclass", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.sparseLDA",
        label = "Sparse Discriminant Analysis"
      )
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      target = task$truth()
      lvls = levels(target)
      y = sapply(lvls, function(lvl) as.integer(as.character(target) == lvl))
      colnames(y) = lvls
      x = as.matrix(task$data(cols = task$feature_names))

      if (is.null(pars$Q)) {
        max_q = min(ncol(x), length(lvls) - 1L)
        if (max_q >= 1L) {
          pars$Q = max_q
        }
      }

      invoke(
        sparseLDA::sda,
        x = x,
        y = y,
        .args = pars
      )
    },
    .predict = function(task) {
      # get parameters with tag "predict"
      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = ordered_features(task, self)

      pred = invoke(predict, self$model, newdata = newdata, .args = pars)

      if (self$predict_type == "response") {
        list(response = pred$class)
      } else {
        list(prob = pred$posterior)
      }
    }
  )
)

.extralrns_dict$add("classif.sparseLDA", LearnerClassifSparseLDA)
