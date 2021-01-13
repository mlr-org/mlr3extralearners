#' @title Classification MARS (Multivariate Adaptive Regression Splines) Learner
#' @author pkopper
#' @name mlr_learners_classif.earth
#'
#' @template class_learner
#' @templateVar id classif.earth
#' @templateVar caller earth
#'
#' @details
#' Methods for variance estimations are not yet implemented.
#'
#' @references
#' Stephen Milborrow (2014)
#' Earth: multivariate adaptive regression spline models
#' R package version 3
#' \url{https://cran.r-project.org/web/packages/earth/earth.pdf}
#'
#' Jerome H. Friedman (1991)
#' Multivariate Adaptive Regression Splines
#' The Annals of Statistics
#' \url{https://projecteuclid.org/download/pdf_1/euclid.aos/1176347963}
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifEarth = R6Class("LearnerClassifEarth",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamUty$new(id = "weights", default = NULL, tags = "train"),
          ParamInt$new(id = "degree", default = 1L, tags = "train"),
          ParamDbl$new(id = "penalty", default = 2L, lower = -1L, tags = "train"),
          ParamUty$new(id = "nk", default = NULL, tags = "train"),
          ParamDbl$new(id = "thresh", default = 0.001, tags = "train"),
          ParamDbl$new(id = "minspan", default = 0L, tags = "train"),
          ParamDbl$new(id = "endspan", default = 0L, tags = "train"),
          ParamDbl$new(id = "newvar.penalty", default = 0L, tags = "train"),
          ParamInt$new(id = "fast.k", default = 20L, tags = "train"),
          ParamInt$new(id = "fast.beta", lower = 0L, upper = 1L, default = 1L, tags = "train"),
          ParamUty$new(id = "linpreds", default = FALSE, tags = "train"),
          ParamUty$new(id = "pmethod", default = "backward", tags = "train"),
          ParamUty$new(id = "nprune", default = NULL, tags = "train"),
          ParamLgl$new(id = "trace", default = FALSE, tags = "predict")
        )
      )

      super$initialize(
        id = "classif.earth",
        packages = "earth",
        feature_types = c("numeric", "factor", "integer"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("weights", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.earth"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = task$data()
      x = data[, task$feature_names]
      y = data[, task$target_names]
      invoke(earth::earth, x = x, y = y, glm = list(family = binomial), .args = pars)
    },

    .predict = function(task) {
      newdata = task$data(cols = task$feature_names)
      # glm naming vs. mlr3
      p = unname(predict(self$model, newdata = newdata, type = "response"))
      levs = task$levels(task$target_names)[[1]]
      if (self$predict_type == "response") {
        pred = PredictionClassif$new(task = task,
                                  response = ifelse(p < 0.5, levs[1L], levs[2L]))
      } else {
        pred = PredictionClassif$new(task = task, prob = prob_vector_to_matrix(p, levs))
      }
    }
  )
)

.extralrns_dict$add("classif.earth", LearnerClassifEarth)
