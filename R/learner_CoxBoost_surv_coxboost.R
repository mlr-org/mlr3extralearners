#' @title Survival Cox Model with Likelihood Based Boosting Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.coxboost
#' @template class_learner
#' @templateVar id surv.coxboost
#' @templateVar caller CoxBoost
#'
#' @details
#' Use [LearnerSurvCoxboost] and [LearnerSurvCVCoxboost] for Cox boosting without and with internal
#' cross-validation of boosting step number, respectively. Tuning using the internal optimizer in
#' [LearnerSurvCVCoxboost] may be more efficient when tuning `stepno` only. However, for tuning
#' multiple hyperparameters, \CRANpkg{mlr3tuning} and [LearnerSurvCoxboost] will likely give better
#' results.
#'
#' @references
#' Binder, H., Allignol, A., Schumacher, M., and Beyersmann, J. (2009).
#' Boosting for high-dimensional time-to-event data with competing risks.
#' Bioinformatics, 25:890-896.
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvCoxboost = R6Class("LearnerSurvCoxboost",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        unpen.index = p_uty(tags = "train"),
        standardize = p_lgl(default = TRUE, tags = "train"),
        stepno = p_int(default = 100, lower = 0, tags = "train"),
        penalty = p_dbl(tags = "train"),
        criterion = p_fct(default = "pscore", levels = c("pscore", "score", "hpscore", "hscore"), tags = "train"),
        stepsize.factor = p_dbl(default = 1, tags = "train"),
        sf.scheme = p_fct(default = "sigmoid", levels = c("sigmoid", "linear"), tags = "train"),
        pendistmat = p_uty(tags = "train"),
        connected.index = p_uty(tags = "train"),
        x.is.01 = p_lgl(default = FALSE, tags = "train"),
        return.score = p_lgl(default = TRUE, tags = "train"),
        trace = p_lgl(default = FALSE, tags = "train"),
        at.step = p_uty(tags = "predict")
      )

      super$initialize(
        # see the mlr3book for a description: https://mlr3book.mlr-org.com/extending-mlr3.html
        id = "surv.coxboost",
        packages = c("CoxBoost", "pracma"),
        feature_types = c("integer", "numeric"),
        predict_types = c("distr", "crank", "lp"),
        param_set = ps,
        properties = "weights",
        man = "mlr3extralearners::mlr_learners_surv.coxboost"
      )
    }
  ),

  private = list(
    .train = function(task) {

      # set column names to ensure consistency in fit and predict
      self$state$feature_names = task$feature_names

      pars = self$param_set$get_values(tags = "train")

      if ("weights" %in% task$properties) {
        pars$weights = as.numeric(task$weights$weight)
      }

      with_package("CoxBoost", {
        mlr3misc::invoke(
          CoxBoost::CoxBoost,
          time = task$truth()[, 1],
          status = task$truth()[, 2],
          x = as.matrix(task$data(cols = task$feature_names)),
          .args = pars
        )
      })
    },

    .predict = function(task) {

      pars = self$param_set$get_values(tags = "predict")

      # get newdata and ensure same ordering in train and predict
      newdata = as.matrix(task$data(cols = self$state$feature_names))

      lp = as.numeric(mlr3misc::invoke(predict,
        self$model,
        newdata = newdata,
        .args = pars,
        type = "lp"))

      surv = mlr3misc::invoke(predict,
        self$model,
        newdata = newdata,
        .args = pars,
        type = "risk",
        times = sort(unique(self$model$time)))

      mlr3proba::.surv_return(times = sort(unique(self$model$time)),
                   surv = surv,
                   lp = lp)
    }
  )
)

.extralrns_dict$add("surv.coxboost", LearnerSurvCoxboost)
