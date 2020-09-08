#' @title Density Plug-In Kernel Learner
#' @author RaphaelS1
#' @name mlr_learners_dens.plug
#'
#' @template class_learner
#' @templateVar id dens.plug
#' @templateVar caller plugin.density
#'
#' @references
#' J. Engel, Eva Herrmann and Theo Gasser (1994).
#' An iterative bandwidth selector for kernel estimation of densities and their derivatives.
#' Journal of Nonparametric Statistics 4, 21–34.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerDensPlugin = R6Class("LearnerDensPlugin",
  inherit = LearnerDens,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamLgl$new(id = "na.rm", default = FALSE, tags = "train")
        )
      )

      super$initialize(
        id = "dens.plug",
        packages = "plugdensity",
        feature_types = c("logical", "integer", "numeric", "character", "factor", "ordered"),
        predict_types = "pdf",
        param_set = ps,
        properties = "missings",
        man = "mlr3extralearners::mlr_learners_dens.plug"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pdf <- function(x) {} # nolint
      body(pdf) <- substitute({
        mlr3misc::invoke(plugdensity::plugin.density, x = data, xout = x, na.rm = TRUE)$y
      }, list(data = task$truth()))

      distr6::Distribution$new(
        name = "Plugin KDE",
        short_name = "PluginKDE",
        pdf = pdf,
        type = set6::Reals$new())
    },

    .predict = function(task) {
      mlr3proba::PredictionDens$new(task = task, pdf = self$model$pdf(task$truth()))
    }
  )
)
