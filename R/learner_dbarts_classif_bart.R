#' @title Classification BART (Bayesian Additive Regression Trees) Learner
#' @author ck37
#' @name mlr_learners_classif.bart
#'
#' @template class_learner
#' @templateVar id classif.bart
#' @templateVar caller bart
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifBart = R6Class("LearnerClassifBart",
  inherit = LearnerClassif,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ParamSet$new(
        params = list(
          ParamInt$new(id = "ntree", default = 200L, lower = 1L, tags = "train"),
          ParamDbl$new(id = "k", default = 2.0, lower = 0, tags = "train"),
          ParamDbl$new(id = "power", default = 2.0, lower = 0, tags = "train"),
          ParamDbl$new(id = "base", default = 0.95, lower = 0, tags = "train"),
          ParamDbl$new(id = "binaryOffset", default = 0.0, tags = "train"),
          ParamInt$new(id = "ndpost", default = 1000L, lower = 1L, tags = "train"),
          ParamInt$new(id = "nskip", default = 100L, lower = 0L, tags = "train"),
          ParamInt$new(id = "printevery", default = 100L, lower = 0L, tags = "train"),
          ParamInt$new(id = "keepevery", default = 1L, lower = 1L, tags = "train"),
          ParamLgl$new(id = "keeptrainfits", default = TRUE, tags = "train"),
          ParamLgl$new(id = "usequants", default = FALSE, tags = "train"),
          ParamInt$new(id = "numcut", default = 100L, lower = 1L, tags = "train"),
          ParamInt$new(id = "printcutoffs", default = 0, tags = "train"),
          ParamLgl$new(id = "verbose", default = TRUE, tags = "train"),
          ParamLgl$new(id = "keepcall", default = TRUE, tags = "train"),
          ParamLgl$new(id = "sampleronly", default = FALSE, tags = "train"),
          ParamDbl$new(id = "offset", default = 0.0, tags = "predict"),
          ParamLgl$new(id = "offset.test", default = FALSE, tags = "predict")
        )
      )

      super$initialize(
        id = "classif.bart",
        packages = "dbarts",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.bart"
      )
    }
  ),

  private = list(

    .train = function(task) {

      pars = self$param_set$get_values(tags = "train")

      # Extact just the features from the task data.
      x_train = task$data(cols = task$feature_names)
      y_train = task$data(cols = task$target_names)
      y_train = as.integer(y_train == task$positive)

      if ("weights" %in% task$properties) {
        pars$weights = task$weights$weight
      }

      mlr3misc::invoke(
        dbarts::bart,
        x.train = x_train,
        y.train = y_train,
        keeptrees = TRUE,
        .args = pars
      )
    },

    .predict = function(task) {

      pars = self$param_set$get_values(tags = "predict") # get parameters with tag "predict"

      newdata = task$data(cols = task$feature_names) # get newdata

      # This will return a matrix of predictions, where each column is an observation
      # and each row is a sample from the posterior.
      p = colMeans(mlr3misc::invoke(
        predict,
        self$model,
        newdata = newdata,
        .args = pars
      ))

      if (self$predict_type == "response") {
        list(response = ifelse(p >= 0.5, task$positive, task$negative))
      } else {
        list(prob = pprob_to_matrix(p, task))
      }
    }
  )
)

.extralrns_dict$add("classif.bart", LearnerClassifBart)
