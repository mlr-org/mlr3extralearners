#' @title L2-Regularized Support Vector Regression Learner
#' @author be-marc
#' @name mlr_learners_regr.liblinear
#'
#' @description
#' L2 regularized support vector regression.
#' Calls [LiblineaR::LiblineaR()] from \CRANpkg{LiblineaR}.
#'
#' @template learner
#' @templateVar id regr.liblinear
#'
#' @details Type of SVR depends on `type` argument:
#'
#' * `type = 11` - L2-regularized L2-loss support vector regression (primal)
#' * `type = 12` – L2-regularized L2-loss support vector regression (dual)
#' * `type = 13` – L2-regularized L1-loss support vector regression (dual)
#'
#' @section Custom mlr3 defaults:
#' - `svr_eps`:
#'   - Actual default: `NULL`
#'   - Adjusted default: 0.001
#'   - Reason for change: `svr_eps` is type dependent and the "type" is handled
#'   by the mlr3learner. The default value is set to th default of the respective
#'   "type".
#'
#' @references
#' `r format_bib("fan2008liblinear")`
#'
#' @export
#' @template seealso_learner
#' @template example
LearnerRegrLiblineaR = R6Class("LearnerRegrLiblineaR",
  inherit = LearnerRegr,
  public = list(

    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {

      ps = ps(
        type = p_int(default = 11, lower = 11, upper = 13, tags = "train"),
        cost = p_dbl(default = 1, lower = 0, tags = "train"),
        bias = p_dbl(default = 1, tags = "train"),
        svr_eps = p_dbl(default = NULL, special_vals = list(NULL),
          lower = 0, tags = "train"),
        cross = p_int(default = 0L, lower = 0L, tags = "train"),
        verbose = p_lgl(default = FALSE, tags = "train"),
        findC = p_lgl(default = FALSE, tags = "train"),
        useInitC = p_lgl(default = TRUE, tags = "train")
      )

      # 50 is an arbitrary choice here
      ps$add_dep("findC", "cross", CondAnyOf$new(seq(2:50)))
      ps$add_dep("useInitC", "findC", CondEqual$new(TRUE))

      # custom defaults
      ps$values = list(
        # Package default is NULL but for regr SVR learners takes precedence over epsilon
        svr_eps = 0.001
      )

      super$initialize(
        id = "regr.liblinear",
        packages = c("mlr3extralearners", "LiblineaR"),
        feature_types = c("integer", "numeric"),
        predict_types = "response",
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_regr.liblinear",
        label = "Support Vector Machine"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")
      data = task$data()
      train = task$data(cols = task$feature_names)
      target = task$truth()

      type = ifelse(is.null(pars$type), 11, pars$type)
      pars = pars[names(pars) != "type"]

      invoke(LiblineaR::LiblineaR, data = train, target = target, type = type, .args = pars)
    },

    .predict = function(task) {
      newdata = ordered_features(task, self)
      pars = self$param_set$get_values(tags = "predict")

      p = invoke(predict, self$model, newx = newdata, .args = pars)
      list(response = p$predictions)
    }
  )
)

.extralrns_dict$add("regr.liblinear", LearnerRegrLiblineaR)
