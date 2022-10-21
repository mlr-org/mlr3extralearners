#' @title Density Plug-In Kernel Learner
#' @author RaphaelS1
#' @name mlr_learners_dens.plug
#'
#' @description
#' Kernel density estimation with global bandwidth selection via "plug-in".
#' Calls [plugdensity::plugin.density()] from \CRANpkg{plugdensity}.
#'
#' @template learner
#' @templateVar id dens.plug
#'
#' @references
#' `r format_bib("engel1994iterative")`
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerDensPlugin",
  R6Class("LearnerDensPlugin",
    inherit = mlr3proba::LearnerDens,

    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          na.rm = p_lgl(default = FALSE, tags = "train")
        )

        super$initialize(
          id = "dens.plug",
          packages = c("mlr3extralearners", "plugdensity"),
          feature_types = "numeric",
          predict_types = "pdf",
          param_set = ps,
          properties = "missings",
          man = "mlr3extralearners::mlr_learners_dens.plug",
          label = "Kernel Density Estimator"
        )
      }
    ),

    private = list(
      .train = function(task) {
        pdf = function(x) {} # nolint
        body(pdf) = substitute({
          invoke(plugdensity::plugin.density, x = data, xout = x, na.rm = TRUE)$y
        }, list(data = task$data()[[1]]))

        distr6::Distribution$new(
          name = "Plugin KDE",
          short_name = "PluginKDE",
          pdf = pdf,
          type = set6::Reals$new())
      },

      .predict = function(task) {
        pars = self$param_set$get_values(tags = "predict")
        invoke(list, pdf = self$model$pdf(task$data()[[1]]), .args = pars)
      }
    )
  )
)

.extralrns_dict$add("dens.plug", function() LearnerDensPlugin$new())
