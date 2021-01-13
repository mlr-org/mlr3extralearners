#' @title Density KS Kernel Learner
#' @author RaphaelS1
#' @name mlr_learners_dens.kde_ks
#'
#' @template class_learner
#' @templateVar id dens.kde_ks
#' @templateVar caller kde
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerDensKDEks = R6Class("LearnerDensKDEks",
  inherit = mlr3proba::LearnerDens,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamDbl$new(id = "h", lower = 0, tags = "train"),
          ParamUty$new(id = "H", tags = "train"),
          ParamUty$new(id = "gridsize", tags = "train"),
          ParamUty$new(id = "gridtype", tags = "train"),
          ParamDbl$new(id = "xmin", tags = "train"),
          ParamDbl$new(id = "xmax", tags = "train"),
          ParamDbl$new(id = "supp", default = 3.7, tags = "train"),
          ParamDbl$new(id = "binned", tags = "train"),
          ParamUty$new(id = "bgridsize", tags = "train"),
          ParamLgl$new(id = "positive", default = FALSE, tags = "train"),
          ParamUty$new(id = "adj.positive", tags = "train"),
          ParamUty$new(id = "w", tags = "train"),
          ParamLgl$new(id = "compute.cont", default = TRUE, tags = "train"),
          ParamLgl$new(id = "approx.cont", default = TRUE, tags = "train"),
          ParamLgl$new(id = "unit.interval", default = FALSE, tags = "train"),
          ParamLgl$new(id = "verbose", default = FALSE, tags = "train"),
          ParamLgl$new(id = "zero.flag", default = TRUE, tags = "train")
        )
      )

      super$initialize(
        id = "dens.kde_ks",
        packages = "ks",
        feature_types = c("integer", "numeric"),
        predict_types = "pdf",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_dens.kde_ks"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tag = "train")

      data = task$data()[[1]]

      pdf <- function(x) {
      }
      body(pdf) <- substitute({
        invoke(ks::kde, x = data, eval.points = x, .args = pars)$estimate
      })

      distr6::Distribution$new(
        name = "ks KDE",
        short_name = "ksKDE",
        pdf = pdf, type = set6::Reals$new())
    },

    .predict = function(task) {
      list(pdf = self$model$pdf(task$data()[[1]]))
    }
  )
)

.extralrns_dict$add("dens.kde_ks", LearnerDensKDEks)
