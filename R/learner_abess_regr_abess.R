#' @title Regression Adaptive Best-subset Selection Learner
#' @author Jin Zhu
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
        predict_types = c("response"),
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

      # FIXME - ADD PREDICTIONS TO LIST BELOW
      list(response = pred)
    }
  )
)

.extralrns_dict$add("regr.abess", LearnerRegrAbess)
