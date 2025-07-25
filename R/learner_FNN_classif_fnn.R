#' @title Fast Nearest Neighbour Classification
#' @author be-marc
#' @name mlr_learners_classif.fnn
#'
#' @description
#' Fast Nearest Neighbour Classification.
#' Calls [FNN::knn()] from \CRANpkg{FNN}.
#'
#'
#' @template learner
#' @templateVar id classif.fnn
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
        man = "mlr3extralearners::mlr_learners_classif.fnn",
        label = "Fast Nearest Neighbour"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      invoke(list, train = task$data(cols = task$feature_names), cl = task$truth(), .args = pars)
    },

    .predict = function(task) {

      if (self$predict_type == "response") {
        p = invoke(
          FNN::knn,
          train = self$model$train,
          cl = self$model$cl,
          test = ordered_features(task, self),
          .args = self$param_set$get_values(tags = "predict")
        )
        list(response = p)
      } else {
        if (task$properties != "twoclass") {
          stop("Probabilities are not available for multiclass")
        }
        p = invoke(
          FNN::knn,
          train = self$model$train,
          cl = self$model$cl,
          test = ordered_features(task, self),
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
