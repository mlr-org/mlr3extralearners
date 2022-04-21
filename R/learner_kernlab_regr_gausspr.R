#' @title Regression Gaussian Process Learner
#' @author RaphaelS1
#' @name mlr_learners_regr.gausspr
#'
#' @template class_learner
#' @templateVar id regr.gausspr
#' @templateVar caller gausspr
#'
#' @details Parameters `sigma`, `degree`, `scale`, `offset` and `order` are
#' added to make tuning `kpar` easier. If `kpar` is provided then these
#' new parameters are ignored. If none are provided then the default
#' "automatic" is used for `kpar`.
#'
#' @references
#' `r format_bib("karatzoglou2004kernlab")`
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerRegrGausspr = R6Class("LearnerRegrGausspr",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(
        scaled = p_uty(default = TRUE, tags = "train"),
        kernel = p_fct(default = "rbfdot",
          levels = c(
            "rbfdot", "polydot", "vanilladot", "tanhdot",
            "laplacedot", "besseldot", "anovadot", "splinedot"),
          tags = "train"),
        sigma = p_dbl(tags = "train"),
        degree = p_dbl(tags = "train"),
        scale = p_dbl(tags = "train"),
        offset = p_dbl(tags = "train"),
        order = p_dbl(tags = "train"),
        kpar = p_uty(default = "automatic", tags = "train"),
        var = p_dbl(lower = 10^-3, default = 0.001, tags = "train"),
        variance.model = p_lgl(default = FALSE, tags = "train"),
        tol = p_dbl(lower = 0, default = 0.001, tags = "train"),
        fit = p_lgl(default = TRUE, tags = "train"),
        na.action = p_uty(default = na.omit, tags = "train")
      )

      super$initialize(
        id = "regr.gausspr",
        packages = c("mlr3extralearners", "kernlab"),
        feature_types = c("numeric", "integer", "logical", "character",
          "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.gausspr"
      )
    }
  ),

  private = list(

    .train = function(task) {
      # these were additionally added to make tuning easier (see help page)
      kpars_names = c("sigma", "degree", "scale", "offset", "order")
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

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      mlr3misc::invoke(kernlab::gausspr,
        x = task$formula(),
        data = task$data(),
        kpar = kpar,
        .args = pars)
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      list(response = as.numeric(mlr3misc::invoke(
        getMethod("predict", "gausspr"),
        self$model,
        task$data(cols = self$state$feature_names),
        .args = pars
      )))
    }
  )
)

.extralrns_dict$add("regr.gausspr", LearnerRegrGausspr)
