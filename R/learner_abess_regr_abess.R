#' @title Regression Adaptive Best-subset Selection Learner
#' @author @rlwanggg
#' @name mlr_learners_regr.abess
#'
#' @template class_learner
#' @templateVar id regr.abess
#' @templateVar caller abess
#'
#'
#' @template seealso_learner
#' @template example
#' @export
#' 
#' Parameter setting
#' @param x Input matrix, of dimension \eqn{n \times p}; each row is an observation
#' vector and each column is a predictor/feature/variable.
#' Can be in sparse matrix format (inherit from class \code{"dgCMatrix"} in package \code{Matrix}).
#' @param y The response variable, of \code{n} observations.
#' For \code{family = "mgaussian"}, \code{y} should be a matrix of quantitative responses.
#' @param family One of the following models:
#' \code{"gaussian"} (continuous response),
#' \code{"poisson"} (non-negative count),
#' \code{"cox"} (left-censored response),
#' \code{"mgaussian"} (multivariate continuous response).
#' Depending on the response. Any unambiguous substring can be given.
#' @param tune.path The method to be used to select the optimal support size. For
#' \code{tune.path = "sequence"}, we solve the best subset selection problem for each size in \code{support.size}.
#' For \code{tune.path = "gsection"}, we solve the best subset selection problem with support size ranged in \code{gs.range},
#' where the specific support size to be considered is determined by golden section.
# @param method The method to be used to select the optimal support size and \eqn{L_2} shrinkage. For
# \code{tune.path = "sequence"}, we solve the best subset selection and the best subset ridge regression
# problem for each \code{s} in \code{1,2,...,s.max} and \eqn{\lambda} in \code{lambda.list}.
# For \code{tune.path = "gsection"}, which is only valid for \code{type = "bss"},
# we solve the best subset selection problem with the range support size \code{gs.range},
# where the specific support size to be considered is determined by golden section. we
# solve the best subset selection problem with a range of non-continuous model
# sizes. For \code{tune.path = "pgsection"} and \code{"psequence"}, the Powell method is used to
# solve the best subset ridge regression problem. Any unambiguous substring can be given.
#' @param tune.type The type of criterion for choosing the support size.
#' Available options are \code{"gic"}, \code{"ebic"}, \code{"bic"}, \code{"aic"} and \code{"cv"}.
#' Default is \code{"gic"}.
#' @param support.size An integer vector representing the alternative support sizes.
#' Only used for \code{tune.path = "sequence"}. Default is \code{0:min(n, round(n/(log(log(n))log(p))))}.
#' @param lambda A single lambda value for regularized best subset selection. Default is 0.
# 0.
# @param s.min The minimum value of support sizes. Only used for \code{tune.path =
# "gsection"}, \code{"psequence"} and \code{"pgsection"}. Default is 1.
# @param s.max The maximum value of support sizes. Only used for \code{tune.path =
# "gsection"}, \code{"psequence"} and \code{"pgsection"}. Default is \code{min(p, round(n/log(n)))}.
# @param lambda.min The minimum value of lambda. Only used for \code{tune.path =
# "powell"}. Default is \code{0.001}.
# @param lambda.max The maximum value of lambda. Only used for \code{tune.path =
# "powell"}. Default is \code{100}.
# @param nlambda The number of \eqn{\lambda}s for the Powell path with sequence line search method.
# Only valid for \code{tune.path = "psequence"}.
#' @param always.include An integer vector containing the indexes of variables that should always be included in the model.
#' @param group.index A vector of integers indicating the which group each variable is in.
#' For variables in the same group, they should be located in adjacent columns of \code{x}
#' and their corresponding index in \code{group.index} should be the same.
#' Denote the first group as \code{1}, the second \code{2}, etc.
#' If you do not fit a model with a group structure,
#' please set \code{group.index = NULL} (the default).
#' @param splicing.type Optional type for splicing.
#' If \code{splicing.type = 1}, the number of variables to be spliced is
#' \code{c.max}, ..., \code{1}; if \code{splicing.type = 2},
#' the number of variables to be spliced is \code{c.max}, \code{c.max/2}, ..., \code{1}.
#' (Default: \code{splicing.type = 2}.)
#' @param screening.num An integer number. Preserve \code{screening.num} number of predictors with the largest
#' marginal maximum likelihood estimator before running algorithm.
#' @param important.search An integer number indicating the number of 
#' important variables to be splicing. 
#' When \code{important.search} \eqn{\ll} \code{p} variables, 
#' it would greatly reduce runtimes. Default: \code{important.search = 128}.
#' @param c.max an integer splicing size. Default is: \code{c.max = 2}.

#' In most of the case, only a few times of splicing iteration can guarantee the convergence.
#' Default is \code{max.splicing.iter = 20}.
#' @param warm.start Whether to use the last solution as a warm start. Default is \code{warm.start = TRUE}.
#' @param nfolds The number of folds in cross-validation. Default is \code{nfolds = 5}.
#' @param cov.update A logical value only used for \code{family = "gaussian"}. If \code{cov.update = TRUE},
#' use a covariance-based implementation; otherwise, a naive implementation.
#' The naive method is more efficient than covariance-based method when \eqn{p >> n} and \code{important.search} is much large than its default value.
#' Default: \code{cov.update = FALSE}.
# @param n The number of rows of the design matrix. A must if \code{x} in triplet form.
# @param p The number of columns of the design matrix. A must if \code{x} in triplet form.
# @param sparse.matrix A logical value indicating whether the input is a sparse matrix.
#' @param newton A character specify the Newton's method for fitting generalized linear models,
#' it should be either \code{newton = "exact"} or \code{newton = "approx"}.
#' If \code{newton = "exact"}, then the exact hessian is used,
#' while \code{newton = "approx"} uses diagonal entry of the hessian,
#' and can be faster (especially when \code{family = "cox"}).
#' @param newton.thresh a numeric value for controlling positive convergence tolerance.
#' The Newton's iterations converge when \eqn{|dev - dev_{old}|/(|dev| + 0.1)<} \code{newton.thresh}.
#' @param max.newton.iter a integer giving the maximal number of Newton's iteration iterations.
#' Default is \code{max.newton.iter = 10} if \code{newton = "exact"}, and \code{max.newton.iter = 60} if \code{newton = "approx"}.
#' @param early.stop A boolean value decide whether early stopping.
#' If \code{early.stop = TRUE}, algorithm will stop if the last tuning value less than the existing one.
#' Default: \code{early.stop = FALSE}.
#' @param num.threads An integer decide the number of threads to be
#' concurrently used for cross-validation (i.e., \code{tune.type = "cv"}).
#' If \code{num.threads = 0}, then all of available cores will be used.
#' Default: \code{num.threads = 0}.
#' @param seed Seed to be used to divide the sample into cross-validation folds.
#' Default is \code{seed = 1}.
#' @param ... further arguments to be passed to or from methods.
#' 
LearnerRegrAbess = R6Class("LearnerRegrAbess",
  inherit = LearnerRegr,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        family = p_fct(
          levels = c("gaussian", "poisson", "cox", "mgaussian"),
          default = "gaussian", tags = "train"),

        tune.path = p_fct(
          levels = c("sequence", "gsection"),
          default = "sequence", tags = "train"),
        tune.type = p_fct(
          levels = c("gic", "ebic", "bic", "aic", "cv"),
          default = "gic", tags = "train"),
        weight = p_uty(default = NULL, tags = "train"),
        normalize = p_int(lower = 0L, upper = 3L, default = 1, tags = "train"),
        c.max = p_int(lower = 1L, upper = Inf, default = 2L, tags = "train"),
        support.size = p_uty(tags = c("train", "predict")),
        lambda = p_dbl(lower = 0, upper = Inf, default = 0, tags = "train"),
        always.include = p_uty(default = NULL, tags = "train"),
        group.index = p_uty(default = NULL, tags = "train"),
        splicing.type = p_int(lower = 1L, upper = 2L, default = 2, tags = "train"),
        max.splicing.iter = p_int(
          lower = 1L, upper = Inf,
          default = 20L, tags = "train"),
        screening.num = p_int(default = 3L, tags = "train"),
        important.search = p_int(default = 128, tags = "train"),
        warm.start = p_lgl(default = TRUE, tags = "train"),
        nfolds = p_int(lower = 1L, upper = Inf, default = 5L, tags = "train"),
        cov.update = p_lgl(default = FALSE, tags = "train"),
        newton = p_fct(levels = c("exact", "approx"), tags = "train"),
        newton.thresh = p_dbl(default = 1e-6, tags = "train"),
        max.newton.iter = p_int(
          lower = 1L, upper = Inf,
          default = 60, tags = "train"),
        early.stop = p_lgl(default = FALSE, tags = "train"),
        num.threads = p_int(lower = 0L, upper = Inf, default = 0L, tags = "train"),
        seed = p_int(lower = 0L, default = 1L, tags = "train"),
        subset = p_uty(tags = "train", custom_check = check_string),
        na.action = p_uty(default = stats::na.omit, tags = "train")

      )

      ps$add_dep(id = "support.size", on = "tune.path", CondEqual$new("sequence"))
      ps$add_dep(id = "num.threads", on = "tune.type", CondEqual$new("cv"))
      ps$add_dep(
        id = "cov.update", on = "family",
        CondAnyOf$new(c("gaussian", "mgaussian")))
      ps$values$newton = "approx"

      super$initialize(
        id = "regr.abess",
        packages = "abess",
        feature_types = c("logical", "integer", "numeric", "ordered"),
      #  predict_types = c("response"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.abess"
      )
    }


  ),

  private = list(
    .train = function(task) {
      # get parameters for training

      if (!is.null(dim(task$truth()))) {
        self$param_set$values$family = "mgaussian"
      }

      pars = self$param_set$get_values(tags = "train")

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      # use the mlr3misc::invoke function (it's similar to do.call())
      mlr3misc::invoke(abess::abess,
        formula = task$formula(),
        data = task$data(),
        .args = pars)
    },

    .predict = function(task) {
      # get parameters with tag "predict"

      pred = NULL

      .args = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)

      pred = mlr3misc::invoke(predict, self$model,
        newx = newdata,
        type = "response")

      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.abess", LearnerRegrAbess)

