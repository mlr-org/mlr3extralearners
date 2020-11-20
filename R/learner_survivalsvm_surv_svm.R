#' @title Survival Support Vector Machine Learner
#' @author RaphaelS1
#' @name mlr_learners_surv.svm
#'
#' @template class_learner
#' @templateVar id surv.svm
#' @templateVar caller survivalsvm
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
#' @references
#' Belle VV, Pelckmans K, Huffel SV, Suykens JAK (2010).
#' “Improved performance on high-dimensional survival data by application of Survival-SVM.”
#' Bioinformatics, 27(1), 87–94.
#' doi: 10.1093/bioinformatics/btq617.
#'
#' Belle VV, Pelckmans K, Huffel SV, Suykens JA (2011).
#' “Support vector methods for survival analysis: a comparison between ranking and regression
#' approaches."
#' Artificial Intelligence in Medicine, 53(2), 107–118.
#' doi: 10.1016/j.artmed.2011.06.006.
#'
#' Shivaswamy, P. K., Chu, W., & Jansche, M. (2007).
#' A support vector approach to censored targets.
#' In Proceedings - IEEE International Conference on Data Mining, ICDM (pp. 655–660).
#' https://doi.org/10.1109/ICDM.2007.93
#'
#' @template seealso_learner
#' @template example
#' @export
LearnerSurvSVM = R6Class("LearnerSurvSVM",
  inherit = mlr3proba::LearnerSurv,

  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      ps = ParamSet$new(
        params = list(
          ParamFct$new(
            id = "type", default = "regression",
            levels = c("regression", "vanbelle1", "vanbelle2", "hybrid"),
            tags = "train"),
          ParamFct$new(
            id = "diff.meth", levels = c("makediff1", "makediff2", "makediff3"),
            tags = c("train")),
          ParamUty$new(id = "gamma.mu", tags = c("train", "required")),
          ParamFct$new(
            id = "opt.meth", default = "quadprog", levels = c("quadprog", "ipop"),
            tags = "train"),
          ParamFct$new(
            id = "kernel", default = "lin_kernel",
            levels = c("lin_kernel", "add_kernel", "rbf_kernel", "poly_kernel"),
            tags = "train"),
          ParamUty$new(id = "kernel.pars", tags = "train"),
          ParamInt$new(id = "sgf.sv", default = 5L, lower = 0L, tags = "train"),
          ParamInt$new(id = "sigf", default = 7L, lower = 0L, tags = "train"),
          ParamInt$new(id = "maxiter", default = 20L, lower = 0L, tags = "train"),
          ParamDbl$new(id = "margin", default = 0.05, lower = 0, tags = "train"),
          ParamDbl$new(id = "bound", default = 10, lower = 0, tags = "train"),
          ParamDbl$new(id = "eig.tol", default = 1e-06, lower = 0, tags = "train"),
          ParamDbl$new(id = "conv.tol", default = 1e-07, lower = 0, tags = "train"),
          ParamDbl$new(id = "posd.tol", default = 1e-08, lower = 0, tags = "train")
        )
      )

      ps$add_dep("diff.meth", "type", CondAnyOf$new(c("vanbelle1", "vanbelle2", "hybrid")))

      super$initialize(
        id = "surv.svm",
        packages = "survivalsvm",
        feature_types = c("integer", "numeric"),
        predict_types = c("crank", "response"),
        param_set = ps,
        man = "mlr3extralearners::mlr_learners_surv.svm"
      )
    }
  ),

  private = list(
    .train = function(task) {
      with_package("survivalsvm", {
        mlr3misc::invoke(survivalsvm::survivalsvm,
          formula = task$formula(),
          data = task$data(),
          .args = self$param_set$get_values(tags = "train"))
      })
    },

    .predict = function(task) {
      fit = predict(self$model, newdata = task$data(cols = task$feature_names))
      crank = as.numeric(fit$predicted)

      if (is.null(self$param_set$values$type) ||
          (self$param_set$values$type %in% c("regression", "hybrid"))) {
        # higher survival time = lower risk
        response = crank
      } else {
        response = NULL
      }

      # higher rank = higher risk
      list(crank = -crank, response = response)
    }
  )
)

.extralrns_dict$add("surv.svm", LearnerSurvSVM)
