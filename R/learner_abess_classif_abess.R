#' @title Classification Adaptive Best-subset Selection Learner
#' @author @rlwanggg
#' @name mlr_learners_classif.abess
#'
#' @template class_learner
#' @templateVar id classif.abess
#' @templateVar caller abess
#'
#' Parameter setting
#' @param x Input matrix, of dimension \eqn{n \times p}; each row is an observation
#' vector and each column is a predictor/feature/variable.
#' Can be in sparse matrix format (inherit from class \code{"dgCMatrix"} in package \code{Matrix}).
#' @param y The response variable, of \code{n} observations.
#' For \code{family = "binomial"} should have two levels.
#' For \code{family = "multinomial"}, \code{y} should be a factor of at least three levels.
#' Note that, for either \code{"binomial"} or \code{"multinomial"},
#' if y is presented as a numerical vector, it will be coerced into a factor.
# @param type One of the two types of problems.
# \code{type = "bss"} for the best subset selection,
# and \code{type = "bsrr"} for the best subset ridge regression.
#' @param family One of the following models:
#' \code{"binomial"} (binary response),
#' \code{"multinomial"} (multi-class response). 
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
#' @param gs.range A integer vector with two elements.
#' The first element is the minimum model size considered by golden-section,
#' the later one is the maximum one. Default is \code{gs.range = c(1, min(n, round(n/(log(log(n))log(p)))))}.
#' Not available now.
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
#' @param normalize Options for normalization. \code{normalize = 0} for no normalization.
#' \code{normalize = 1} for subtracting the mean of columns of \code{x}.
#' \code{normalize = 2} for scaling the columns of \code{x} to have \eqn{\sqrt n} norm.
#' \code{normalize = 3} for subtracting the means of the columns of \code{x} and \code{y}, and also
#' normalizing the columns of \code{x} to have \eqn{\sqrt n} norm.
#' If \code{normalize = NULL}, \code{normalize} will be set \code{1} for \code{"gaussian"},
#' \code{2} for \code{"binomial"}. Default is \code{normalize = NULL}.
#' @param c.max an integer splicing size. Default is: \code{c.max = 2}.
#' @param max.splicing.iter The maximum number of performing splicing algorithm.
#' In most of the case, only a few times of splicing iteration can guarantee the convergence.
#' Default is \code{max.splicing.iter = 20}.
#' @param warm.start Whether to use the last solution as a warm start. Default is \code{warm.start = TRUE}.
#' @param nfolds The number of folds in cross-validation. Default is \code{nfolds = 5}.
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
#' @return A S3 \code{abess} class object, which is a \code{list} with the following components:
# \item{best.model}{The best model chosen by algorithm. It is a \code{list} object comprising the following sub-components:
#  1. \code{beta}: a fitted \eqn{p}-dimensional coefficients vector; 2. \code{coef0}: a numeric fitted intercept;
#  3. \code{support.index}: an index vector of best model's support set; 4. \code{support.size}: the support size of the best model;
#  5. \code{dev}: the deviance of the model; 6. \code{tune.value}: the tune value of the model.
# }
#' \item{beta}{A \eqn{p}-by-\code{length(support.size)} matrix of coefficients for univariate family, stored in column format;
#' while a list of \code{length(support.size)} coefficients matrix (with size \eqn{p}-by-\code{ncol(y)}) for multivariate family.}
#' \item{intercept}{An intercept vector of length \code{length(support.size)} for univariate family;
#' while a list of \code{length(support.size)} intercept vector (with size \code{ncol(y)}) for multivariate family.}
#' \item{dev}{the deviance of length \code{length(support.size)}.}
#' \item{tune.value}{A value of tuning criterion of length \code{length(support.size)}.}
# \item{best.model}{The best fitted model for \code{type = "bss"}.}
# \item{lambda}{The lambda chosen for the best fitting model}
# \item{beta.all}{For \code{bess} objects obtained by \code{gsection}, \code{pgsection}
# and \code{psequence}, \code{beta.all} is a matrix with each column be the coefficients
# of the model in each iterative step in the tuning path.
# For \code{bess} objects obtained by \code{sequence} method,
# A list of the best fitting coefficients of size
# \code{s=0,1,...,p} and \eqn{\lambda} in \code{lambda.list} with the
# smallest loss function. For \code{"bess"} objects of \code{"bsrr"} type, the fitting coefficients of the
# \eqn{i^{th} \lambda} and the \eqn{j^{th}} \code{s} are at the \eqn{i^{th}}
# list component's \eqn{j^{th}} column.}
# \item{coef0.all}{For \code{bess} objects obtained from \code{gsection}, \code{pgsection} and \code{psequence},
# \code{coef0.all} contains the intercept for the model in each iterative step in the tuning path.
# For \code{bess} objects obtained from \code{sequence} path,
# \code{coef0.all} contains the best fitting
# intercepts of size \eqn{s=0,1,\dots,p} and \eqn{\lambda} in
# \code{lambda.list} with the smallest loss function.}
# \item{loss.all}{For \code{bess} objects obtained from \code{gsection}, \code{pgsection} and \code{psequence},
# \code{loss.all} contains the training loss of the model in each iterative step in the tuning path.
# For \code{bess} objects obtained from \code{sequence} path, this is a
# list of the training loss of the best fitting intercepts of support size
# \eqn{s=0,1,\dots,p} and \eqn{\lambda} in \code{lambda.list}. For \code{"bess"} object obtained by \code{"bsrr"},
# the training loss of the \eqn{i^{th} \lambda} and the \eqn{j^{th}} \code{s}
# is at the \eqn{i^{th}} list component's \eqn{j^{th}} entry.}
# \item{ic.all}{For \code{bess} objects obtained from \code{gsection}, \code{pgsection} and \code{psequence},
# \code{ic.all} contains the values of the chosen information criterion of the model in each iterative step in the tuning path.
# For \code{bess} objects obtained from \code{sequence} path, this is a
# matrix of the values of the chosen information criterion of support size \eqn{s=0,1,\dots,p}
# and \eqn{\lambda} in \code{lambda.list} with the smallest loss function. For \code{"bess"} object obtained by \code{"bsrr"},
# the training loss of the \eqn{i^{th} \lambda} and the \eqn{j^{th}}
# \code{s} is at the \eqn{i^{th}} row \eqn{j^{th}} column. Only available when
# model selection is based on a certain information criterion.}
# \item{lambda.all}{The lambda chosen for each step in \code{pgsection} and \code{psequence}.}
#' \item{nobs}{The number of sample used for training.}
#' \item{nvars}{The number of variables used for training.}
#' \item{family}{Type of the model.}
#' \item{tune.path}{The path type for tuning parameters.}
#' \item{support.size}{The actual \code{support.size} values used.
#' Note that it is not necessary the same as the input
#' if the later have non-integer values or duplicated values.}
#' \item{edf}{The effective degree of freedom.
#' It is the same as \code{support.size} when \code{lambda = 0}.}
# \item{support.df}{The degree of freedom in each support set,
# in other words, the number of predictors in each group.
# Particularly, it would be a all one vector with length \code{nvars} when \code{group.index = NULL}.}
#' \item{best.size}{The best support size selected by the tuning value.}
#' \item{tune.type}{The criterion type for tuning parameters.}
#' \item{tune.path}{The strategy for tuning parameters.}
#' \item{screening.vars}{The character vector specify the feature
#' selected by feature screening.
#' It would be an empty character vector if \code{screening.num = 0}.}
#' \item{call}{The original call to \code{abess}.}
# \item{type}{Either \code{"bss"} or \code{"bsrr"}.}
#'
#' @details
#' Best-subset selection aims to find a small subset of predictors,
#' so that the resulting model is expected to have the most desirable prediction accuracy.
#' Best-subset selection problem under the support size \eqn{s} is
#' \deqn{\min_\beta -2 \log L(\beta) \;\;{\rm s.t.}\;\; \|\beta\|_0 \leq s,}
#' where \eqn{L(\beta)} is arbitrary convex functions. In
#' the GLM case, \eqn{\log L(\beta)} is the log-likelihood function; in the Cox
#' model, \eqn{\log L(\beta)} is the log partial-likelihood function.
#'
#' The best subset selection problem is solved by the "abess" algorithm in this package, see Zhu (2020) for details.
#' Under mild conditions, the algorithm exactly solve this problem in polynomial time.
#' This algorithm exploits the idea of sequencing and splicing to reach a stable solution in finite steps
#' when \eqn{s} is fixed.
#' To find the optimal support size \eqn{s},
#' we provide various criterion like GIC, AIC, BIC and cross-validation error to determine it.
#'
#' @references A polynomial algorithm for best-subset selection problem. Junxian Zhu, Canhong Wen, Jin Zhu, Heping Zhang, Xueqin Wang. Proceedings of the National Academy of Sciences Dec 2020, 117 (52) 33117-33123; DOI: 10.1073/pnas.2014241117
#' @references Sure independence screening for ultrahigh dimensional feature space. Fan, J. and Lv, J. (2008), Journal of the Royal Statistical Society: Series B (Statistical Methodology), 70: 849-911. https://doi.org/10.1111/j.1467-9868.2008.00674.x
#' @references Targeted Inference Involving High-Dimensional Data Using Nuisance Penalized Regression. Qiang Sun & Heping Zhang (2020). Journal of the American Statistical Association, DOI: 10.1080/01621459.2020.1737079
#' @references Certifiably Polynomial Algorithm for Best Group Subset Selection. Zhang, Yanhang, Junxian Zhu, Jin Zhu, and Xueqin Wang (2021). arXiv preprint arXiv:2104.12576.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerClassifAbess = R6Class("LearnerClassifAbess",
  inherit = LearnerClassif,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        family = p_fct(
          levels = c("binomial", "multinomial"),
          default = "binomial", tags = "train"),

        tune.path = p_fct(
          levels = c("sequence", "gsection"),
          default = "sequence", tags = "train"),
        tune.type = p_fct(
          levels = c("gic", "ebic", "bic", "aic", "cv"),
          default = "gic", tags = "train"),
        weight = p_uty(default = NULL, tags = "train"),
        normalize = p_int(lower = 0L, upper = 3L, default = 2L, tags = "train"),
        c.max = p_int(lower = 1L, upper = Inf, default = 2L, tags = "train"),
        support.size = p_uty(tags = c("train", "predict")),
        lambda = p_dbl(lower = 0, upper = Inf, default = 0, tags = "train"),
        always.include = p_uty(default = NULL, tags = "train"),
        group.index = p_uty(default = NULL, tags = "train"),
        splicing.type = p_int(lower = 1L, upper = 2L, default = 2, tags = "train"),
        max.splicing.iter = p_int(
          lower = 1L, upper = Inf,
          default = 20L, tags = "train"),
        screening.num = p_int(default = 2, tags = "train"),
        important.search = p_int(default = 128, tags = "train"),
        warm.start = p_lgl(default = TRUE, tags = "train"),
        nfolds = p_int(lower = 1L, upper = Inf, default = 5L, tags = "train"),
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
      ps$values$newton = "approx"

      super$initialize(
        id = "classif.abess",
        packages = "abess",
        feature_types = c("logical", "integer", "numeric", "ordered"),
        predict_types = c("response", "prob"),
        param_set = ps,
        properties = c("missings", "multiclass", "selected_features", "twoclass"),
        man = "mlr3extralearners::mlr_learners_classif.abess"
      )
    },

    #' @description
    #' Selected features are extracted from the model slot `screening.vars`.
    #' @return `character()`.
    selected_features = function() {
      if (is.null(self$model$screening.vars) & !is.null(self$model)) {
        mlr3misc::stopf("No features were selected.")
      }

      self$model$screening.vars
    }
  ),


  private = list(
    .train = function(task) {

      if (task$properties == "multiclass") {
        self$param_set$values$family = "multinomial"
      } else {
        self$param_set$values$family = "binomial"
      }

      # get parameters for training
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

      response = NULL
      prob = NULL
      # get parameters with tag "predict"
      .args = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = task$data(cols = self$state$feature_names)
      
      if (self$predict_type == "response") {
        pred = mlr3misc::invoke(predict, self$model,
          newx = newdata,
          type = "response")
        label = apply(pred[[1]], 1, which.max)
        response = task$class_names[label]
      } else {
        prob = mlr3misc::invoke(predict, self$model,
          newx = newdata,
          type = "response")
      }

      list(response = response, prob = prob[[1]])
    }
  )
)

.extralrns_dict$add("classif.abess", LearnerClassifAbess)

