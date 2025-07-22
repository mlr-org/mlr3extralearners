#' @title Regression Relevance Vector Machine Learner
#' @author RaphaelS1
#' @name mlr_learners_regr.rvm
#'
#' @description
#' Bayesian version of the support vector machine.
#' Parameters `sigma`, `degree`, `scale`, `offset`, `order`, `length`,
#' `lambda`, and `normalized` are added to make tuning `kpar` easier.
#' If `kpar` is provided then these new parameters are ignored. If none are
#' provided then the default "automatic" is used for `kpar`.
#' Calls [kernlab::rvm()] from package \CRANpkg{kernlab}.
#'
#' @template learner
#' @templateVar id regr.rvm
#'
#'
#' @references
#' `r format_bib("karatzoglou2004kernlab")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrRVM = R6Class("LearnerRegrRVM",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(
        kernel = p_fct(default = "rbfdot",
          levels = c(
            "rbfdot", "polydot", "vanilladot", "tanhdot",
            "laplacedot", "besseldot", "anovadot", "splinedot", "stringdot"),
          tags = "train"),
        sigma = p_dbl(tags = "train"),
        degree = p_dbl(tags = "train"),
        scale = p_dbl(tags = "train"),
        offset = p_dbl(tags = "train"),
        order = p_dbl(tags = "train"),
        length = p_int(lower = 0, tags = "train"),
        lambda = p_dbl(tags = "train"),
        normalized = p_lgl(tags = "train"),
        kpar = p_uty(default = "automatic", tags = "train"),
        alpha = p_uty(default = 5, tags = "train"),
        var = p_dbl(lower = 10^-3, default = 0.1, tags = "train"),
        var.fix = p_lgl(default = FALSE, tags = "train"),
        iterations = p_int(default = 100, lower = 0, tags = "train"),
        tol = p_dbl(lower = 0, default = .Machine$double.eps, tags = "train"),
        minmaxdiff = p_dbl(lower = 0, default = 1e-3, tags = "train"),
        verbosity = p_lgl(default = FALSE, tags = "train"),
        fit = p_lgl(default = TRUE, tags = "train"),
        na.action = p_uty(default = na.omit, tags = "train")
      )

      super$initialize(
        id = "regr.rvm",
        packages = c("mlr3extralearners", "kernlab"),
        feature_types = c("numeric", "integer", "logical", "character",
          "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.rvm",
        label = "Relevance Vector Machine"
      )
    }
  ),

  private = list(

    .train = function(task) {
      # these were additionally added to make tuning easier (see help page)
      kpars_names = c("sigma", "degree", "scale", "offset", "order", "length", "lambda", "normalized")
      pars = self$param_set$get_values(tags = "train")
      kpar = pars$kpar
      pars$kpar = NULL
      # kpars and pars are treated seperately
      kpars = pars[names(pars) %in% kpars_names]
      pars = pars[names(pars) %nin% kpars_names]
      pars$type = "regression"

      if (is.null(kpar)) {
        if (length(kpars)) {
          kpar = kpars
        } else {
          kpar = "automatic"
        }
      }

      invoke(kernlab::rvm,
        x = task$formula(),
        data = task$data(),
        kpar = kpar,
        .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      list(response = as.numeric(invoke(
        getMethod("predict", "rvm"),
        self$model,
        ordered_features(task, self),
        .args = pars
      )))
    }
  )
)

.extralrns_dict$add("regr.rvm", LearnerRegrRVM)
