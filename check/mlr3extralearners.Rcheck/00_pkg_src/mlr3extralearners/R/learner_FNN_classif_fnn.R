#' @title Classification Fast Nearest Neighbor Search Learner
#' @author be-marc
#' @name mlr_learners_classif.fnn
#'
#' @template class_learner
#' @templateVar id classif.fnn
#' @templateVar caller knn
#'
#' @references
#' `r format_bib("boltz2007knn")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerClassifFNN = R6Class("LearnerClassifFNN",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        k = p_int(default = 1L, lower = 1L, tags = "predict"),
        algorithm = p_fct(default = "kd_tree", levels = c("kd_tree", "cover_tree", "brute"),
          tags = "predict")
      )

      super$initialize(
        id = "classif.fnn",
        packages = c("mlr3extralearners", "FNN"),
        feature_types = c("integer", "numeric"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("twoclass", "multiclass"),
        man = "mlr3extralearners::mlr_learners_classif.fnn"
      )
    }
  ),

  private = list(
    .train = function(task) {
      self$state$feature_names = task$feature_names
      list(
        train = task$data(cols = task$feature_names),
        cl = task$truth()
      )
    },

    .predict = function(task) {

      if (self$predict_type == "response") {
        p = mlr3misc::invoke(
          FNN::knn,
          train = self$model$train,
          cl = self$model$cl,
          test = task$data(cols = self$state$feature_names),
          .args = self$param_set$get_values(tags = "predict")
        )
        list(response = p)
      } else {
        if (task$properties != "twoclass") {
          stop("Probabilities are not available for multiclass")
        }
        p = mlr3misc::invoke(
          FNN::knn,
          train = self$model$train,
          cl = self$model$cl,
          test = task$data(cols = self$state$feature_names),
          prob = TRUE,
          .args = self$param_set$get_values(tags = "predict")
        )

        attr(p, "prob")[p == task$negative] = 1 - attr(p, "prob")[p == task$negative]

        list(prob = pprob_to_matrix(attr(p, "prob"), task))
      }
    }
  )
)

.extralrns_dict$add("classif.fnn", LearnerClassifFNN)
