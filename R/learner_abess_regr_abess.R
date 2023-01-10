#' @title Regression Abess Learner
#' @author abess-team
#' @name mlr_learners_regr.abess
#'
#' @description
#' Adaptive best-subset selection for regression.
#' Calls [abess::abess()] from \CRANpkg{abess}.
#'
#' @templateVar id regr.abess
#' @template learner
#'
#' @inheritSection mlr_learners_classif.abess Initial parameter values
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
      param_set = ps(
        family = p_fct(
          default = "gaussian",
          levels = c("gaussian", "mgaussian", "poisson", "gamma"),
          tags = "train"
        ),
        tune.path = p_fct(
          default = "sequence",
          levels = c("sequence", "gsection"),
          tags = "train"
        ),
        tune.type = p_fct(
          default = "gic",
          levels = c("gic", "aic", "bic", "ebic", "cv"),
          tags = "train"
        ),
        normalize = p_int(default = NULL, special_vals = list(NULL), tags = "train"),
        support.size = p_uty(default = NULL, tags = "train"),
        c.max = p_int(default = 2, lower = 1, tags = "train"),
        gs.range = p_uty(default = NULL, tags = "train"),
        lambda = p_dbl(default = 0.0, lower = 0.0, tags = "train"),
        always.include = p_uty(default = NULL, tags = "train"),
        group.index = p_uty(default = NULL, tags = "train"),
        init.active.set = p_uty(default = NULL, tags = "train"),
        splicing.type = p_int(default = 2, lower = 1, upper = 2, tags = "train"),
        max.splicing.iter = p_int(default = 20, lower = 1, tags = "train"),
        screening.num = p_int(default = NULL, lower = 0, special_vals = list(NULL), tags = "train"),
        important.search = p_int(default = NULL, lower = 0, special_vals = list(NULL), tags = "train"),
        warm.start = p_lgl(default = TRUE, tags = "train"),
        nfolds = p_int(default = 5, tags = "train"),
        foldid = p_uty(default = NULL, tags = "train"),
        cov.update = p_lgl(default = FALSE, tags = "train"),
        newton = p_fct(default = "exact", levels = c("exact", "approx"), tags = "train"),
        newton.thresh = p_dbl(default = 1e-6, lower = 0.0, tags = "train"),
        max.newton.iter = p_int(default = NULL, lower = 1, special_vals = list(NULL), tags = "train"),
        early.stop = p_lgl(default = FALSE, tags = "train"),
        ic.scale = p_dbl(default = 1.0, lower = 0.0, tags = "train"),
        num.threads = p_int(default = 0L, lower = 0L, tags = c("train", "threads")),
        seed = p_int(default = 1, tags = "train")
      )

      param_set$values$num.threads = 1L

      super$initialize(
        id = "regr.abess",
        packages = "abess",
        feature_types = c("numeric", "integer"),
        predict_types = "response",
        param_set = param_set,
        properties = c("weights", "selected_features"),
        man = "mlr3extralearners::mlr_learners_regr.abess",
        label = "Fast Best Subset Selection for Regression"
      )
    },
    #' @description
    #' Extract the name of selected features from the model by [abess::extract()].
    #' @return The names of selected features
    selected_features = function() {
      abess::extract(self$model)$support.vars
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")
      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(weight = task$weights$weight))
      }

      invoke(
        abess::abess,
        x = task$data(cols = task$feature_names),
        y = as.matrix(task$data(cols = task$target_names)),
        .args = pars
      )
    },
    .predict = function(task) {
      prob = invoke(
        predict,
        self$model,
        newx = ordered_features(task, self),
        type = "response")
      list(response = prob)
    }
  )
)
.extralrns_dict$add("regr.abess", LearnerRegrAbess)
