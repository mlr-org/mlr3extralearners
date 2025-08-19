#' @title Survival Support Vector Machine Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.svm
#'
#' @description
#' Survival support vector machine.
#' Calls [survivalsvm::survivalsvm()] from \CRANpkg{survivalsvm}.
#'
#' @template learner
#' @templateVar id surv.svm
#'
#' @section Prediction types:
#' This learner returns up to two prediction types:
#' 1. `crank`: a vector containing the continuous ranking scores, where each score
#' corresponds to a specific test observation.
#' 2. `response`: the survival time of each test observation, equal to `-crank`.
#' This prediction type if only available for `"type"` equal to `regression` or `hybrid`.
#'
#' @details
#' Four possible SVMs can be implemented, dependent on the `type` parameter. These correspond
#' to predicting the survival time via regression (`regression`), predicting a continuous rank
#' (`vanbelle1`, `vanbelle2`), or a hybrid of the two (`hybrid`).
#' Whichever `type` is chosen determines how the `crank` predict type is calculated,
#' but in any case all can be considered a valid continuous ranking.
#'
#' `makediff3` is recommended when using `type = "hybrid"`.
#'
#' @section Custom mlr3 parameters:
#'
#' - `gamma`, `mu` have replaced `gamma.mu` so that it's easier to tune these separately.
#' `mu` is only used when `type = "hybrid"`.
#'
#' @references
#' `r format_bib("van2011improved", "van2011support", "shivaswamy2007support")`
#'
#' @template seealso_learner
#' @examplesIf learner_is_runnable("surv.svm")
#' set.seed(123)
#' # Define the Learner and set parameter values
#' learner = lrn("surv.svm", gamma = 0.1)
#' print(learner)
#'
#' # Define a Task
#' task = tsk("rats")
#'
#' # Create train and test set
#' ids = partition(task)
#'
#' # Train the learner on the training ids
#' learner$train(task, row_ids = ids$train)
#'
#' # print the model
#' print(learner$model)
#'
#' # Make predictions for the test rows
#' predictions = learner$predict(task, row_ids = ids$test)
#'
#' # Score the predictions
#' predictions$score()
#' @export
LearnerSurvSVM = R6Class("LearnerSurvSVM",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ps(
        type = p_fct(
          default = "regression",
          levels = c("regression", "vanbelle1", "vanbelle2", "hybrid"),
          tags = "train"),
        diff.meth = p_fct(
          levels = c("makediff1", "makediff2", "makediff3"),
          tags = c("train")),
        gamma = p_dbl(default = NULL, special_vals = list(NULL), tags = "train"),
        mu = p_dbl(default = NULL, special_vals = list(NULL), tags = "train"),
        opt.meth = p_fct(
          default = "quadprog", levels = c("quadprog", "ipop"),
          tags = "train"),
        kernel = p_fct(
          default = "lin_kernel",
          levels = c("lin_kernel", "add_kernel", "rbf_kernel", "poly_kernel"),
          tags = "train"),
        kernel.pars = p_uty(tags = "train"),
        sgf.sv = p_int(default = 5L, lower = 0L, tags = "train"),
        sigf = p_int(default = 7L, lower = 0L, tags = "train"),
        maxiter = p_int(default = 20L, lower = 0L, tags = "train"),
        margin = p_dbl(default = 0.05, lower = 0, tags = "train"),
        bound = p_dbl(default = 10, lower = 0, tags = "train"),
        eig.tol = p_dbl(default = 1e-06, lower = 0, tags = "train"),
        conv.tol = p_dbl(default = 1e-07, lower = 0, tags = "train"),
        posd.tol = p_dbl(default = 1e-08, lower = 0, tags = "train")
      )

      ps$add_dep("diff.meth", "type", CondAnyOf$new(c("vanbelle1", "vanbelle2", "hybrid")))

      super$initialize(
        id = "surv.svm",
        packages = c("mlr3extralearners", "survivalsvm"),
        feature_types = c("integer", "numeric", "character", "factor", "logical"),
        predict_types = c("crank", "response"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_surv.svm",
        label = "Survival Support Vector Machine"
      )
    }
  ),

  private = list(
    .train = function(task) {
      pars = self$param_set$get_values(tags = "train")

      # Regularization parameters are defined separately to be tuned more easily
      gamma = pars$gamma
      mu = pars$mu
      type = pars$type
      if (!is.null(type) && type == "hybrid") {
        # a vector with two parameters is required when `type` = "hybrid"
        gamma.mu = c(gamma, mu)
      } else {
        gamma.mu = gamma
      }
      # remove `gamma` and `mu`
      pars$gamma = NULL
      pars$mu = NULL

      with_package("survivalsvm", {
        invoke(survivalsvm::survivalsvm,
          formula = task$formula(),
          data = task$data(),
          gamma.mu = gamma.mu, # pass `gamma.mu` separately
          .args = pars)
      })
    },

    .predict = function(task) {
      pars = self$param_set$get_values(tags = "predict")
      fit = invoke(predict,
                   self$model,
                   newdata = ordered_features(task, self),
                   .args = pars)
      crank = as.numeric(fit$predicted)

      type = self$param_set$values$type
      if (is.null(type) || (type %in% c("regression", "hybrid"))) {
        # ranking is like survival time
        response = crank
      } else {
        response = NULL
      }

      # higher continuous ranking = lower survival time
      list(crank = -crank, response = response)
    }
  )
)

.extralrns_dict$add("surv.svm", LearnerSurvSVM)
