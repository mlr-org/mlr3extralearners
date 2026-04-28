#' @title OPLS-DA Classification Learner
#' @author Takha65
#' @name mlr_learners_classif.opls
#'
#' @description
#' Binary classification using Orthogonal Partial Least Squares
#' Discriminant Analysis (OPLS-DA).
#' Calls \code{ropls::opls()} from package \code{ropls} (Bioconductor).
#' Install \code{ropls} using
#' \code{BiocManager::install("ropls")}
#'
#' @section Initial parameter values:
#' - \code{predI} is set to 1 (one predictive component, standard for OPLS-DA).
#' - \code{orthoI} is set to 1 (one orthogonal component).
#' - \code{permI} is set to 0 (no permutation testing, for speed).
#'
#' @templateVar id classif.opls
#' @template learner
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
        predI     = p_int(lower = 1L, default = 1L, tags = "train"),
        orthoI    = p_int(lower = 0L, default = 1L, tags = "train"),
        algoC     = p_fct(c("default", "nipals", "svd"),
                          default = "default", tags = "train"),
        crossvalI = p_int(lower = 1L, default = 7L, tags = "train"),
        scaleC    = p_fct(c("none", "center", "pareto", "standard"),
                          default = "standard", tags = "train"),
        permI     = p_int(lower = 0L, default = 0L, tags = "train")
      )

      param_set$values = list(
        predI = 1L,
        orthoI = 1L,
        permI = 0L
      )

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
      x = as.matrix(task$data(cols = task$feature_names))
      y = task$truth()
      n_features = ncol(x)
      if (pars$predI + pars$orthoI > n_features) {
        pars$orthoI = max(0L, n_features - pars$predI)
      }
      invoke(
        ropls::opls,
        x = x,
        y = y,
        fig.pdfC = "none",
        info.txtC = "none",
        .args = pars
      )
    },

    .predict = function(task) {
      newdata = as.matrix(task$data(cols = task$feature_names))
      predict_fun = getMethod("predict", "opls",
                              where = asNamespace("ropls"))
      response = predict_fun(self$model, newdata = newdata)
      list(response = response)
    }
  )
)

.extralrns_dict$add("classif.opls", LearnerClassifOPLS)
