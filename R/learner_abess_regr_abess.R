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
        family = p_uty(default = "gaussian", tags = "train", custom_check = function(x) {
          ifelse(x %in% c("gaussian", "poisson", "gamma"), TRUE, FALSE)
        }),
        tune.path = p_uty(default = "sequence", tags = "train", custom_check = function(x) {
          ifelse(x %in% c("sequence", "gsection"), TRUE, FALSE)
        }),
        tune.type = p_uty(default = "gic", tags = "train", custom_check = function(x) {
          ifelse(x %in% c("gic", "ebic", "bic", "aic", "cv"), TRUE, FALSE)
        }),
        normalize = p_uty(default = NULL, tags = "train"),
        support.size = p_uty(default = NULL, tags = "train"),
        support.size.predict = p_uty(default = NULL, tags = "predict"),
        c.max = p_int(default = 2, lower = 1, tags = "train"),
        gs.range = p_uty(default = NULL, tags = "train"),
        lambda = p_uty(default = 0, tags = "train"),
        always.include = p_uty(default = NULL, tags = "train"),
        group.index = p_uty(default = NULL, tags = "train"),
        init.active.set = p_uty(default = NULL, tags = "train"),
        splicing.type = p_int(default = 2, lower = 1, upper = 2, tags = "train"),
        max.splicing.iter = p_int(default = 20, lower = 1, tags = "train"),
        screening.num = p_uty(default = NULL, tags = "train"),
        important.search = p_uty(default = NULL, tags = "train"),
        warm.start = p_lgl(default = TRUE, tags = "train"),
        nfolds = p_int(default = 5, tags = "train"),
        foldid = p_uty(default = NULL, tags = "train"),
        cov.update = p_lgl(default = FALSE, tags = "train"),
        newton = p_uty(default = "exact", tags = "train"),
        newton.thresh = p_dbl(default = 1e-6, tags = "train"),
        max.newton.iter = p_uty(default = NULL, tags = "train"),
        early.stop = p_lgl(default = FALSE, tags = "train"),
        ic.scale = p_dbl(default = 1.0, tags = "train"),
        num.threads = p_int(default = 0, tags = "train"),
        seed = p_int(default = 1, tags = "train")
      )

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
    #' Select features.
    #' @param support.size an integer which indicates the number of selected features.
    #' @return Selected features
    selected_features = function(support.size = NULL) {
      abess::extract(self$model, support.size = support.size)$support.vars
    }
  ),
  private = list(
    .train = function(task) {
      # get parameters for training
      pars = self$param_set$get_values(tags = "train")

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      if ("weights" %in% task$properties) {
        pars = insert_named(pars, list(weight = task$weights$weight))
      }

      invoke(
        abess::abess,
        x = task$data(cols = task$feature_names),
        y = task$data(cols = task$target_names)[[1]],
        .args = pars
      )
    },
    .predict = function(task) {
      response = invoke(
        predict,
        self$model,
        newx = task$data(cols = self$state$feature_names),
        support.size = self$param_set$values$support.size.predict)

      list(response = response)
    } # <PREDICT>
  )
)

.extralrns_dict$add("regr.abess", LearnerRegrAbess)
