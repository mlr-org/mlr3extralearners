#' @title Regression XBART Learner
#' @author AntoineDbn
#' @name mlr_learners_regr.xbart
#'
#' @description
#' Accelerated Bayesian Additive Regression Trees (XBART) for regression.
#' Calls `XBART::XBART()` from the \href{https://github.com/JingyuHe/XBART}{XBART}
#' package (not available on CRAN).
#'
#' @section Installation:
#' The XBART package is not on CRAN and must be installed from GitHub.
#' It requires the GSL (GNU Scientific Library).
#'
#' On **Windows**, install GSL via Rtools45 before installing the package:
#' \enumerate{
#'   \item Install \href{https://cran.r-project.org/bin/windows/Rtools/}{Rtools45}.
#'   \item Open the Rtools Bash terminal and run:
#'         `pacman -S mingw-w64-x86_64-gsl`
#'   \item Then install the package from R:
#'         `remotes::install_github("JingyuHe/XBART")`
#' }
#'
#' On **Linux/macOS**, install GSL via your package manager (e.g.
#' `sudo apt install libgsl-dev` or `brew install gsl`), then run:
#' `remotes::install_github("JingyuHe/XBART")`
#'
#' @templateVar id regr.xbart
#' @template learner
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrXBART = R6Class("LearnerRegrXBART",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        num_sweeps = p_int(lower = 1L, default = 40L, tags = "train"),
        num_trees  = p_int(lower = 1L, default = 100L, tags = "train"),
        alpha      = p_dbl(lower = 0, upper = 1, default = 0.95, tags = "train"),
        beta       = p_dbl(lower = 0, default = 1.25, tags = "train")
      )

      super$initialize(
        id = "regr.xbart",
        packages = c("mlr3extralearners", "XBART"),
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.xbart",
        label = "Accelerated Bayesian Additive Regression Trees"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      X = as.matrix(task$data(cols = task$feature_names))
      y = task$data(cols = task$target_names)[[1L]]

      invoke(XBART::XBART, X = X, y = y, .args = pars)
    },

    .predict = function(task) {
      X = as.matrix(ordered_features(task, self))
      preds = predict(self$model, X)
      list(response = rowMeans(preds))
    }
  )
)

.extralrns_dict$add("regr.xbart", LearnerRegrXBART)
