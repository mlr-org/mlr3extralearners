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
#' `r format_bib("van2011improved", "van2011support", "shivaswamy2007support")`
#'
#' @template seealso_learner
#' @template example
#' @export
delayedAssign(
  "LearnerSurvSVM",
  R6Class("LearnerSurvSVM",
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
          gamma.mu = p_uty(tags = c("train", "required")),
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
          label = "Support Vector Machine"
        )
      }
    ),

    private = list(
      .train = function(task) {
        with_package("survivalsvm", {
          invoke(survivalsvm::survivalsvm,
            formula = task$formula(),
            data = task$data(),
            .args = self$param_set$get_values(tags = "train"))
        })
      },

      .predict = function(task) {
        pars = self$param_set$get_values(tags = "predict")
        fit = predict(self$model, newdata = ordered_features(task, self),
          .args = pars
        )
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
)

.extralrns_dict$add("surv.svm", function() LearnerSurvSVM$new())
