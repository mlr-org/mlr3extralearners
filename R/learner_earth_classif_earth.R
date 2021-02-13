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
          ParamUty$new(id = "wp", default = NULL, tags = "train"),
          ParamUty$new(id = "offset", default = NULL, tags = "train"),
          ParamLgl$new(id = "keepxy", default = FALSE, tags = "train"),
          ParamFct$new(id = "trace", default = "0",
            levels = c("0", ".3", ".5", "1", "2", "3", "4", "5"), tags = "train"
          ),
          ParamInt$new(id = "degree", default = 1L, lower = 1L, tags = "train"),
          ParamDbl$new(id = "penalty", default = 2L, lower = -1L, tags = "train"),
          ParamUty$new(id = "nk", default = NULL, tags = "train"),
          ParamDbl$new(id = "thresh", default = 0.001, tags = "train"),
          ParamDbl$new(id = "minspan", default = 0L, lower = 0L, tags = "train"),
          ParamDbl$new(id = "endspan", default = 0L, lower = 0L, tags = "train"),
          ParamDbl$new(id = "newvar.penalty", default = 0L, lower = 0L, tags = "train"),
          ParamInt$new(id = "fast.k", default = 20L, lower = 0L, tags = "train"),
          ParamInt$new(id = "fast.beta", lower = 0L, upper = 1L, default = 1L, tags = "train"),
          ParamUty$new(id = "linpreds", default = FALSE, tags = "train"),
          ParamUty$new(id = "allowed", tags = "train"),
          ParamFct$new(id = "pmethod", default = "backward",
            levels = c("backward", "none", "exhaustive", "forward", "seqrep", "cv"),
            tags = "train"),
          ParamInt$new(id = "nprune", lower = 0L, tags = "train"),
          ParamInt$new(id = "nfold", default = 0L, lower = 0L, tags = "train"),
          ParamInt$new(id = "ncross", default = 1L, lower = 0L, tags = "train"),
          ParamLgl$new(id = "stratify", default = TRUE, tags = "train"),
          ParamFct$new(
            id = "varmod.method", default = "none",
            levels = c("none", "const", "lm", "rlm", "earth", "gam", "power", "power0", "x.lm",
              "x.rlm", "x.earth", "x.gam"), tags = "train"),
          ParamDbl$new(id = "varmod.exponent", default = 1, tags = "train"),
          ParamDbl$new(id = "varmod.conv", lower = 0, upper = 1, default = 1, tags = "train"),
          ParamDbl$new(id = "varmod.clamp", default = 0.1, tags = "train"),
          ParamDbl$new(id = "varmod.minspan", default = -3, tags = "train"),
          ParamLgl$new(id = "Scale.y", default = FALSE, tags = "train"),
          ParamDbl$new(id = "Adjust.endspan", default = 2, tags = "train"),
          ParamLgl$new(id = "Auto.linpreds", default = TRUE, tags = "train"),
          ParamLgl$new(id = "Force.weights", default = FALSE, tags = "train"),
          ParamLgl$new(id = "Use.beta.cache", default = TRUE, tags = "train"),
          ParamLgl$new(id = "Force.xtx.prune", default = FALSE, tags = "train"),
          ParamLgl$new(id = "Get.leverages", default = TRUE, tags = "train"),
          ParamDbl$new(id = "Exhaustive.tol", default = 1e-10, tags = "train")
        )
      )

      ps$add_dep("varmod.minspan", "varmod.method", CondEqual$new("earth"))
      ps$add_dep("Exhaustive.tol", "pmethod", CondEqual$new("exhaustive"))

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

      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(weights = task$weights$weight))
      }

      mlr3misc::invoke(
        earth::earth,
        x = task$data(cols = task$feature_names),
        y = as.integer(task$data(cols = task$target_names) == task$positive),
        glm = list(family = stats::binomial),
        .args = pars
      )
    },

    .predict = function(task) {
      p = mlr3misc::invoke(
        predict,
        self$model,
        newdata = task$data(cols = task$feature_names),
        type = "response",
        .args = self$param_set$get_values(tags = "predict")
      )

      if (self$predict_type == "response") {
        list(response = ifelse(p < 0.5, task$negative, task$positive))
      } else {
        list(prob = pprob_to_matrix(p, task))
      }
    }
  )
)

.extralrns_dict$add("classif.earth", LearnerClassifEarth)
