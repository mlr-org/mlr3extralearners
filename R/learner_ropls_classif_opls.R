#' @title OPLS-DA Classification Learner
#' @author Takha65
#' @name mlr_learners_classif.opls
#'
#' @description
#' Binary classification with orthogonal partial least squares discriminant analysis (OPLS-DA).
#' Calls `ropls::opls()` from Bioconductor package \CRANpkg{ropls}.
#'
#' `ropls` is distributed via Bioconductor and not via CRAN, so it has to be installed with
#' `BiocManager::install("ropls")`.
#'
#' @section Initial parameter values:
#' - `predI`
#'   - Actual default: `NA`, which lets `ropls::opls()` determine the number of predictive components by
#'     cross-validation.
#'   - Adjusted default: `1`
#'   - Reason for change: OPLS-DA is defined with a single predictive component, and a fixed number of components
#'     keeps the model comparable across resampling iterations.
#' - `orthoI`
#'   - Actual default: `0`
#'   - Adjusted default: `1`
#'   - Reason for change: With `orthoI = 0` no orthogonal component is extracted and `ropls::opls()` fits plain
#'     PLS-DA instead of OPLS-DA.
#' - `permI`
#'   - Actual default: `20`
#'   - Adjusted default: `0`
#'   - Reason for change: The permutation test is a model diagnostic that is not used for prediction and costs
#'     `permI` extra model fits.
#'
#' @section Suppressed output:
#' `ropls::opls()` writes a diagnostic figure and a model summary by default.
#' Both are suppressed by fixing `fig.pdfC` and `info.txtC` to `"none"`, so neither is exposed as a
#' hyperparameter.
#'
#' @section Number of components:
#' `ropls::opls()` requires `predI + orthoI` to not exceed the smaller of the number of observations and the
#' number of features, and errors otherwise.
#' With the initial parameter values this means that the learner needs at least two features.
#'
#' @templateVar id classif.opls
#' @template learner
#'
#' @references
#' `r format_bib("thevenot2015analysis")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifOPLS = R6Class("LearnerClassifOPLS",
  inherit = LearnerClassif,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        predI = p_int(lower = 1L, tags = "train"),
        orthoI = p_int(lower = 0L, default = 0L, tags = "train"),
        algoC = p_fct(levels = c("default", "nipals", "svd"), default = "default", tags = "train"),
        crossvalI = p_int(lower = 1L, default = 7L, tags = "train"),
        log10L = p_lgl(default = FALSE, tags = "train"),
        scaleC = p_fct(levels = c("none", "center", "pareto", "standard"), default = "standard",
          tags = "train"),
        permI = p_int(lower = 0L, default = 20L, tags = "train")
      )

      param_set$set_values(predI = 1L, orthoI = 1L, permI = 0L)

      super$initialize(
        id = "classif.opls",
        packages = c("mlr3extralearners", "ropls"),
        feature_types = c("numeric", "integer"),
        predict_types = "response",
        param_set = param_set,
        properties = "twoclass",
        man = "mlr3extralearners::mlr_learners_classif.opls",
        label = "OPLS-DA"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      invoke(
        ropls::opls,
        x = as.matrix(task$data(cols = task$feature_names)),
        y = task$truth(),
        fig.pdfC = "none",
        info.txtC = "none",
        .args = pars
      )
    },

    .predict = function(task) {
      newdata = as.matrix(ordered_features(task, self))
      response = invoke(ropls::predict, self$model, newdata = newdata)
      list(response = factor(as.character(response), levels = task$class_names))
    }
  )
)

.extralrns_dict$add("classif.opls", LearnerClassifOPLS)
