#' @title Regression MARS (Multivariate Adaptive Regression Splines) Learner
#' @author pkopper
#' @name mlr_learners_regr.earth
#'
#' @template class_learner
#' @templateVar id regr.earth
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
#' @export
LearnerRegrEarth = R6Class("LearnerRegrEarth",
  inherit = LearnerRegr,
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
        id = "regr.earth",
        packages = "earth",
        feature_types = c("numeric", "factor", "integer"),
        predict_types = "response",
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.earth"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = task$data()
      f_names = task$feature_names
      t_names = task$target_names
      x = data[, ..f_names]
      y = data[, ..t_names]
      invoke(earth::earth, x = x, y = y, .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      # as of now not necessary.
      newdata = task$data(cols = task$feature_names)
      p = invoke(predict, self$model, newdata = newdata, type = "response", .args = pars)
      PredictionRegr$new(task = task, response = p)
    }
  )
)

lrns_dict$add("regr.earth", LearnerRegrEarth)