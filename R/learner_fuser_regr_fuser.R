#' @title Fused Lasso Regression Learner
#' @author EngineerDanny
#' @name mlr_learners_regr.fuser
#'
#' @description
#' Fused lasso regression over subsets of the data.
#' One linear model is fitted per subset, and an L2 fusion penalty shares information between the coefficients
#' of the subsets.
#' Calls `fuser::generateBlockDiagonalMatrices()` and `fuser::fusedL2DescentGLMNet()` from \CRANpkg{fuser}.
#'
#' @section Subsets:
#' The learner requires a task with exactly one column with the column role `"subset"`, which assigns each row to
#' a subset.
#' The `"subset"` role is registered by \CRANpkg{mlr3resampling}, so that package has to be loaded before the role
#' can be set, e.g. with `task$set_col_roles("column", roles = "subset")`.
#' There must be at least two subsets in the training data, and predictions are only possible for subsets that
#' were present during training.
#' The `"group"` role is not used because mlr3 keeps the rows of a group together when resampling,
#' so that the test set would only contain subsets that the model has not seen.
#'
#' @section Initial parameter values:
#' - `lambda` is initialized to 0.01, because the upstream function has no default for it.
#'   The value should be tuned.
#' - `scaling` is initialized to `FALSE`, the upstream default is `TRUE`.
#'   With scaling, the features and the target of each subset are divided by the number of rows of the subset,
#'   so that a suitable `lambda` depends strongly on the number of rows and the initial value would shrink
#'   all coefficients to zero on all but very small data sets.
#'
#' @section Custom mlr3 parameters:
#' - `G` is the matrix of pairwise fusion strengths between the subsets.
#'   Rows and columns are aligned with the subset names, which are converted to character and sorted.
#'   If `G` is not set, all pairs of subsets are fused with strength 1.
#' - `intercept` fits one unpenalized intercept per subset if `TRUE`.
#'   The intercept that `glmnet::glmnet()` would fit across all subsets is always disabled,
#'   because the upstream function discards it.
#' - `lambda` must be a single value, the upstream function accepts a vector.
#'
#' @templateVar id regr.fuser
#' @template learner
#'
#' @references
#' `r format_bib("dondelinger2020joint")`
#'
#' @template seealso_learner
#' @template example_fuser
#' @export
LearnerRegrFuser = R6Class("LearnerRegrFuser",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        G = p_uty(default = NULL, tags = "train",
          custom_check = crate(function(x) check_matrix(x, mode = "numeric", any.missing = FALSE, null.ok = TRUE))),
        gamma = p_dbl(lower = 0, default = 1, tags = "train"),
        intercept = p_lgl(default = FALSE, tags = "train"),
        lambda = p_dbl(lower = 0, init = 0.01, tags = c("train", "required")),
        penalty.factors = p_uty(tags = "train",
          custom_check = crate(function(x) check_numeric(x, lower = 0, any.missing = FALSE))),
        scaling = p_lgl(default = TRUE, init = FALSE, tags = "train")
      )

      super$initialize(
        id = "regr.fuser",
        packages = c("mlr3extralearners", "fuser", "mlr3resampling"),
        feature_types = c("logical", "integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.fuser",
        label = "Fused Lasso"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      subsets = fuser_subsets(task)
      subset_names = sort(unique(subsets))
      k = length(subset_names)
      if (k < 2L) {
        stopf("Learner 'regr.fuser' requires at least two subsets in the training data.")
      }

      G = pv$G %??% matrix(1, k, k)
      if (nrow(G) != k || ncol(G) != k) {
        stopf("Parameter 'G' must be a %ix%i matrix aligned with the sorted subset names.", k, k)
      }

      x = as_numeric_matrix(task$data(cols = task$feature_names))
      # the upstream default is evaluated after the intercept column is added and then has the wrong length
      pv$penalty.factors = pv$penalty.factors %??% rep(1, ncol(x))
      transformed = invoke(fuser::generateBlockDiagonalMatrices,
        X = x,
        Y = task$truth(),
        groups = subsets,
        G = G,
        .args = pv[intersect(names(pv), c("intercept", "penalty.factors", "scaling"))]
      )

      # the intercept of glmnet is discarded by fuser, so it must not be fitted
      beta = invoke(fuser::fusedL2DescentGLMNet,
        transformed.x = transformed$X,
        transformed.x.f = transformed$X.fused,
        transformed.y = transformed$Y,
        groups = subsets,
        lambda = pv$lambda,
        gamma = pv$gamma %??% 1,
        intercept = FALSE,
        penalty.factor = transformed$penalty
      )

      coef_names = c(task$feature_names, if (isTRUE(pv$intercept)) "(Intercept)")
      matrix(beta, ncol = k, dimnames = list(coef_names, subset_names))
    },

    .predict = function(task) {
      beta = self$model
      subsets = fuser_subsets(task)
      unknown = setdiff(subsets, colnames(beta))
      if (length(unknown)) {
        stopf("Subsets not present during training: %s", str_collapse(unknown, quote = "'"))
      }

      x = as_numeric_matrix(ordered_features(task, self))
      if ("(Intercept)" %in% rownames(beta)) {
        x = cbind(x, 1)
      }

      list(response = rowSums(x * t(beta[, subsets, drop = FALSE])))
    }
  )
)

fuser_subsets = function(task) {
  subset_id = task$col_roles$subset
  if (length(subset_id) != 1L) {
    stopf("Learner 'regr.fuser' requires exactly one column with role 'subset'.")
  }
  as.character(task$data(cols = subset_id)[[1L]])
}

.extralrns_dict$add("regr.fuser", LearnerRegrFuser)
