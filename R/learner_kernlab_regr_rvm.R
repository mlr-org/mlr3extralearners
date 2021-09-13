#' @title Regression Relevance Vector Machine Learner
#' @author RaphaelS1
#' @name mlr_learners_regr.rvm
#'
#' @template class_learner
#' @templateVar id regr.rvm
#' @templateVar caller rvm
#'
#' @details Parameters `sigma`, `degree`, `scale`, `offset`, `order`, `length`,
#' `lambda`, and `normalized` are added to make tuning `kpar` easier.
#' If `kpar` is provided then these new parameters are ignored. If none are
#' provided then the default "automatic" is used for `kpar`.
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
        sigma = p_dbl(tag = c("train", "kpar")),
        degree = p_dbl(tag = c("train", "kpar")),
        scale = p_dbl(tag = c("train", "kpar")),
        offset = p_dbl(tag = c("train", "kpar")),
        order = p_dbl(tag = c("train", "kpar")),
        length = p_int(lower = 0, tag = c("train", "kpar")),
        lambda = p_dbl(tag = c("train", "kpar")),
        normalized = p_lgl(tag = c("train", "kpar")),
        kpar = p_uty(default = "automatic", tag = "train"),
        alpha = p_uty(default = 5, tag = "train"),
        var = p_dbl(lower = 10^-3, default = 0.1, tag = "train"),
        var.fix = p_lgl(default = FALSE, tag = "train"),
        iterations = p_int(default = 100, lower = 0, tags = "train"),
        tol = p_dbl(lower = 0, default = .Machine$double.eps, tag = "train"),
        minmaxdiff = p_dbl(lower = 0, default = 1e-3, tag = "train"),
        verbosity = p_lgl(default = FALSE, tag = "train"),
        fit = p_lgl(default = TRUE, tag = "train"),
        cross = p_int(lower = 0, default = 0, tag = "train"),
        na.action = p_uty(default = na.omit, tag = "train")
      )

      super$initialize(
        id = "regr.rvm",
        packages = "kernlab",
        feature_types = c("numeric", "integer", "logical", "character",
                          "factor", "ordered"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.rvm"
      )
    }


  ),

  private = list(

    .train = function(task) {

      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      kpars = self$param_set$get_values(tags = "kpar")
      kpar = self$param_set$values$kpar

      if (is.null(kpar)) {
        if (length(kpars)) {
          kpar = kpars
        } else {
          kpar = "automatic"
        }
      }

      pars = pars[setdiff(names(pars), c("kpar", names(kpars)))]


      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      mlr3misc::invoke(kernlab::rvm,
                       x = task$formula(),
                       data = task$data(),
                       kpar = kpar,
                       .args = pars)
    },

    .predict = function(task) {
      list(response = as.numeric(mlr3misc::invoke(
        getMethod("predict", "rvm"),
        self$model,
        task$data(cols = self$state$feature_names)
      )))
    }
  )
)

.extralrns_dict$add("regr.rvm", LearnerRegrRVM)
