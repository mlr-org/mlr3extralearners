#' @title Density Nonparametric Learner
#' @name mlr_learners_dens.nonpar
#' @author RaphaelS1
#'
#' @description
#' Nonparametric density estimation.
#' Calls [sm::sm.density()] from \CRANpkg{sm}.
#'
#' @template learner
#' @templateVar id dens.nonpar
#'
#' @references
#' `r format_bib("bowman1997applied")`
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerDensNonparametric",
  R6Class("LearnerDensNonparametric",
    inherit = mlr3proba::LearnerDens,

    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          h = p_dbl(tags = "train"),
          group = p_uty(tags = "train"),
          delta = p_dbl(tags = "train"),
          h.weights = p_dbl(default = 1, tags = "train"),
          hmult = p_uty(default = 1, tags = "train"),
          method = p_fct(default = "normal",
            levels = c("normal", "cv", "sj", "df", "aicc"), tags = "train"),
          positive = p_lgl(default = FALSE, tags = "train"),
          verbose = p_uty(default = 1, tags = "train")
        )

        super$initialize(
          id = "dens.nonpar",
          packages = c("mlr3extralearners", "sm"),
          feature_types = c("integer", "numeric"),
          predict_types = "pdf",
          param_set = ps,
          properties = "weights",
          man = "mlr3extralearners::mlr_learners_dens.nonpar",
          label = "Nonparametric Density Estimation"
        )
      }
    ),

    private = list(
      .train = function(task) {
        pars = self$param_set$get_values(tags = "train")

        if ("weights" %in% task$properties) {
          pars$weights = task$weights$weight
        }

        # TODO: Why is it done that way??
        pdf = function(x) {} # nolint
        body(pdf) = substitute({
          invoke(sm::sm.density,
            x = data, eval.points = x, display = "none", show.script = FALSE,
            .args = pars)$estimate
        }, list(data = task$data(cols = task$feature_names)[[1]]))

        distr6::Distribution$new(
          name = "Nonparametric Density",
          short_name = "NonparDens",
          type = set6::Reals$new(),
          pdf = pdf)
      },

      .predict = function(task) {
        pars = self$param_set$get_values(tags = "predict")
        invoke(list, pdf = self$model$pdf(task$data(cols = task$feature_names)[[1]]), .args = pars)
      }
    )
  )
)

.extralrns_dict$add("dens.nonpar", function() LearnerDensNonparametric$new())
