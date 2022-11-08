#' @title Regression Kernlab Support Vector Machine
#' @author mboecker
#' @name mlr_learners_regr.ksvm
#'
#' @description
#' Support Vector Regression.
#' Calls [kernlab::ksvm()] from \CRANpkg{kernlab}.
#'
#' @template learner
#' @templateVar id regr.ksvm
#'
#' @references
#' `r format_bib("karatzoglou2004kernlab")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrKSVM = R6Class("LearnerRegrKSVM",
  inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      # the default for kpar is "automatic", which uses "sigest" in case the kernel is "rbfdot"
      # (also the default). Only when the sigma, ... are set, the "automatic" value is overwritten
      # Note that this is not explicitly checked with dependencies (maybe add at some point)
      ps = ps(
        scaled = p_lgl(default = TRUE, tags = "train"),
        type = p_fct(default = "eps-svr",
          levels = c("eps-svr", "nu-svr", "eps-bsvr"), tags = "train"),
        kernel = p_fct(default = "rbfdot",
          levels = c(
            "rbfdot", "polydot", "vanilladot",
            "laplacedot", "besseldot", "anovadot"),
          tags = "train"),
        C = p_dbl(default = 1, tags = "train"),
        nu = p_dbl(default = 0.2, lower = 0, tags = "train"),
        epsilon = p_dbl(default = 0.1, tags = "train"),
        cache = p_int(default = 40, lower = 1L, tags = "train"),
        tol = p_dbl(default = 0.001, lower = 0, tags = "train"),
        shrinking = p_lgl(default = TRUE, tags = "train"),
        sigma = p_dbl(default = NO_DEF, lower = 0, tags = "train"),
        degree = p_int(default = NO_DEF, lower = 1L,
          tags = "train"),
        scale = p_dbl(default = NO_DEF, lower = 0, tags = "train"),
        order = p_int(default = NO_DEF, tags = "train"),
        offset = p_dbl(default = NO_DEF, tags = "train"),
        na.action = p_uty(default = na.omit, tags = "train"),
        fit = p_lgl(default = TRUE, tags = "train")
      )
      ps$add_dep(
        "sigma", "kernel",
        CondAnyOf$new(c("rbfdot", "laplacedot", "besseldot", "anovadot")))
      ps$add_dep(
        "degree", "kernel",
        CondAnyOf$new(c("polydot", "besseldot", "anovadot")))
      ps$add_dep("scale", "kernel", CondAnyOf$new("polydot"))
      ps$add_dep("order", "kernel", CondAnyOf$new("besseldot"))
      ps$add_dep("offset", "kernel", CondAnyOf$new("polydot"))

      super$initialize(
        id = "regr.ksvm",
        packages = c("mlr3extralearners", "kernlab"),
        feature_types = c(
          "logical", "integer", "numeric",
          "character", "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_regr.ksvm",
        label = "Support Vector Machine"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      kpar = intersect(
        c("sigma", "degree", "scale", "order", "offset"),
        names(pars))

      if ("weights" %in% task$properties) {
        pars$class.weights = task$weights$weight
      }

      if (length(kpar) > 0) {
        pars$kpar = pars[kpar]
        pars[kpar] = NULL
      }

      f = task$formula()
      data = task$data()

      invoke(kernlab::ksvm, x = f, data = data, .args = pars)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      p = invoke(kernlab::predict, self$model,
        newdata = newdata,
        type = "response",
        .args = pars
      )
      list(response = p)
    }
  )
)

.extralrns_dict$add("regr.ksvm", LearnerRegrKSVM)
