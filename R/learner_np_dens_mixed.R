#' @title Density Mixed Data Kernel Learner
#' @author RaphaelS1
#' @name mlr_learners_dens.mixed
#'
#' @template class_learner
#' @templateVar id dens.mixed
#' @templateVar caller npudens
#'
#' @references
#' Li, Q. and J.S. Racine (2003),
#' “Nonparametric estimation of distributions with categorical and continuous data,”
#' Journal of Multivariate Analysis, 86, 266-292.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerDensMixed = R6Class("LearnerDensMixed",
  inherit = LearnerDens,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamUty$new(id = "bws", tags = "train"),
          ParamFct$new(
            id = "ckertype", default = "gaussian",
            levels = c("gaussian", "epanechnikov", "uniform"),
            tags = c("train")),
          ParamLgl$new(id = "bwscaling", default = FALSE, tags = "train"),
          ParamFct$new(
            id = "bwmethod", default = "cv.ml",
            levels = c("cv.ml", "cv.ls", "normal-reference"),
            tags = "train"),
          ParamFct$new(
            id = "bwtype", default = "fixed",
            levels = c("fixed", "generalized_nn", "adaptive_nn"),
            tags = "train"),
          ParamLgl$new(id = "bandwidth.compute", default = FALSE, tags = "train"),
          ParamInt$new(id = "ckerorder", default = 2, lower = 2, upper = 8, tags = "train"),
          ParamLgl$new(id = "remin", default = TRUE, tags = "train"),
          ParamInt$new(id = "itmax", lower = 1, default = 10000, tags = "train"),
          ParamInt$new(id = "nmulti", lower = 1, tags = "train"),
          ParamDbl$new(id = "ftol", default = 1.490116e-07, tags = "train"),
          ParamDbl$new(id = "tol", default = 1.490116e-04, tags = "train"),
          ParamDbl$new(id = "small", default = 1.490116e-05, tags = "train"),
          ParamDbl$new(id = "lbc.dir", default = 0.5, tags = "train"),
          ParamDbl$new(id = "dfc.dir", default = 0.5, tags = "train"),
          ParamUty$new(id = "cfac.dir", default = 2.5 * (3.0 - sqrt(5)), tags = "train"),
          ParamDbl$new(id = "initc.dir", default = 1.0, tags = "train"),
          ParamDbl$new(id = "lbd.dir", default = 0.1, tags = "train"),
          ParamDbl$new(id = "hbd.dir", default = 1, tags = "train"),
          ParamUty$new(id = "dfac.dir", default = 0.25 * (3.0 - sqrt(5)), tags = "train"),
          ParamDbl$new(id = "initd.dir", default = 1.0, tags = "train"),
          ParamDbl$new(id = "lbc.init", default = 0.1, tags = "train"),
          ParamDbl$new(id = "hbc.init", default = 2.0, tags = "train"),
          ParamDbl$new(id = "cfac.init", default = 0.5, tags = "train"),
          ParamDbl$new(id = "lbd.init", default = 0.1, tags = "train"),
          ParamDbl$new(id = "hbd.init", default = 0.9, tags = "train"),
          ParamDbl$new(id = "dfac.init", default = 0.37, tags = "train"),
          ParamFct$new(id = "ukertype", levels = c("aitchisonaitken", "liracine"), tags = "train"),
          ParamFct$new(id = "okertype", levels = c("wangvanryzin", "liracine"), tags = "train")
        )
      )

      super$initialize(
        id = "dens.mixed",
        packages = "np",
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        predict_types = "pdf",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_dens.mixed"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tag = "train")
      data = task$truth()

      pdf <- function(x) {} #nolint
      body(pdf) <- substitute({
        with_package("np", mlr3misc::invoke(np::npudens,
          tdat = data.frame(data),
          edat = data.frame(x), .args = pars)$dens)
      })

      kernel = if (is.null(pars$ckertype)) "gaussian" else pars$ckertype
      distr6::Distribution$new(
        name = paste("Mixed KDE", kernel),
        short_name = paste0("MixedKDE_", kernel),
        pdf = pdf, type = set6::Reals$new())
    },

    .predict = function(task) {
      list(pdf = self$model$pdf(task$truth()))
    }
  )
)

lrns_dict$add("dens.mixed", LearnerDensMixed)
