#' @title Density Kerdiest Kernel Learner
#' @author RaphaelS1
#' @name mlr_learners_dens.kde_kd
#'
#' @description
#' Kernel Density Estimator of the distribution function.
#' Calls [kerdiest::kde()] from \CRANpkg{kerdiest}.
#'
#' @template learner
#' @templateVar id dens.kde_kd
#'
#' @references
#' `r format_bib("quintela2012nonparametric")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerDensKDEkd = R6Class("LearnerDensKDEkd",
  inherit = mlr3proba::LearnerDens,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        bw = p_dbl(lower = 0, tags = "train"),
        type_kernel = p_fct(levels = c("n", "e", "t", "b"),
          default = "n", tags = "train")
      )

      super$initialize(
        id = "dens.kde_kd",
        packages = c("mlr3extralearners", "kerdiest"),
        feature_types = c("integer", "numeric"),
        predict_types = "pdf",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_dens.kde_kd"
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
        invoke(kerdiest::kde, vec_data = data, y = x, .args = pars)$Estimated_values
      })

      if (is.null(pars$type_kernel)) {
        kernel = "Normal"
      } else {
        kernel = switch(pars$type_kernel,
          "n" = "Normal",
          "e" = "Epanechnikov",
          "b" = "Biweight",
          "t" = "Triweight")
      }

      distr6::Distribution$new(
        name = paste("kerdiest KDE", kernel),
        short_name = paste0("kerdiestKDEKern_", kernel),
        pdf = pdf, type = set6::Reals$new())
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      invoke(list, pdf = self$model$pdf(task$data()[[1]]), .args = pars)
    }
  )
)

.extralrns_dict$add("dens.kde_kd", LearnerDensKDEkd)
