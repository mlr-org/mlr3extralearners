#' @title Density Locfit Learner
#' @name mlr_learners_dens.locfit
#' @author RaphaelS1
#'
#' @description
#' Local density estimation.
#' Calls [locfit::density.lf()] from \CRANpkg{locfit}.
#'
#' @template learner
#' @templateVar id dens.locfit
#'
#' @references
#' `r format_bib("loader2006local")`
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerDensLocfit",
  R6Class("LearnerDensLocfit",
    inherit = mlr3proba::LearnerDens,

    public = list(
      #' @description
      #' Creates a new instance of this [R6][R6::R6Class] class.
      initialize = function() {
        ps = ps(
          window = p_fct(levels = c(
            "tcub", "rect", "trwt",
            "tria", "epan", "bisq",
            "gaus"), default = "gaus", tags = "train"),
          width = p_dbl(tags = "train"),
          from = p_dbl(tags = "train"),
          to = p_dbl(tags = "train"),
          cut = p_dbl(tags = "train"),
          deg = p_dbl(default = 0, tags = "train"),
          link = p_fct(default = "ident", tags = "train",
            levels = c("ident", "log", "logit", "inverse", "sqrt", "arcsin")),
          kern = p_fct(default = "tcub", tags = "train",
            levels = c("rect", "trwt", "tria", "epan", "bisq", "gauss", "tcub")),
          kt = p_fct(default = "sph", tags = "train",
            levels = c("sph", "prod")),
          renorm = p_lgl(default = FALSE, tags = "train"),
          maxk = p_int(default = 100, lower = 0, tags = "train"),
          itype = p_fct(levels = c("prod", "mult", "mlin", "haz"), tags = "train"),
          mint = p_int(default = 20, lower = 1, tags = "train"),
          maxit = p_int(default = 20, lower = 1, tags = "train")
        )

        super$initialize(
          id = "dens.locfit",
          packages = c("mlr3extralearners", "locfit"),
          feature_types = c("integer", "numeric"),
          predict_types = "pdf",
          param_set = ps,
          man = "mlr3extralearners::mlr_learners_dens.locfit",
          label = "Local Density Estimation"
        )
      }
    ),

    private = list(
      .train = function(task) {
        pars = self$param_set$get_values(tags = "train")

        data = task$data()[[1]]

        pdf = function(x) {
        }
        body(pdf) = substitute({
          invoke(locfit::density.lf, x = data, ev = x, .args = pars)$y
        })

        distr6::Distribution$new(
          name = paste("LocFit Density", self$param_set$values$window),
          short_name = paste0("LocFitDens", self$param_set$values$window),
          pdf = pdf,
          type = set6::Reals$new())
      },

      .predict = function(task) {
        list(pdf = self$model$pdf(task$data()[[1]]))
      }
    )
  )
)

.extralrns_dict$add("dens.locfit", function() LearnerDensLocfit$new())
