#' @title Regression Fuser Learner
#' @name mlr_learners_regr.fuser
#'
#' @description
#' Calls `fuser::fusedL2DescentGLMNet()` from the GitHub package `EngineerDanny/fuser`
#' (install with `remotes::install_github("EngineerDanny/fuser")`).
#' Requires exactly one grouping column assigned to the `group` role.
#'
#' @section Initial parameter values:
#' * `lambda` is set to `NULL`.
#' * `gamma` is set to `1`.
#' * `scaling` is set to `FALSE`.
#'
#' @templateVar id regr.fuser
#' @template learner
#'
#' @template seealso_learner
#'
#' @examplesIf learner_is_runnable("regr.fuser")
#' # Define the Learner
#' learner = lrn("regr.fuser", lambda = 0.01, gamma = 0.01, scaling = FALSE)
#'
#' # Create a simple task with a grouping column
#' set.seed(1)
#' groups = rep(c("A", "B"), each = 10)
#' x1 = rnorm(20)
#' x2 = rnorm(20)
#' y = x1 + x2 + rnorm(20, sd = 0.1)
#' data = data.frame(y = y, x1 = x1, x2 = x2, group = groups)
#'
#' task = TaskRegr$new(id = "fuser_example", backend = data, target = "y")
#' task$set_col_roles("group", roles = "group")
#'
#' # Train and predict
#' learner$train(task)
#' pred = learner$predict(task)
#' head(pred$response)
#' @export
LearnerRegrFuser = R6Class("LearnerRegrFuser",
  inherit = LearnerRegr,
  public = list(
    #' @description
    #' Creates a new instance of this [R6][R6::R6Class] class.
    initialize = function() {
      param_set = ps(
        lambda  = p_uty(default = NULL, tags = "train"),
        gamma   = p_dbl(lower = 0, default = 1, tags = "train"),
        scaling = p_lgl(default = FALSE, tags = "train"),
        G       = p_uty(default = NULL, tags = "train")
      )

      super$initialize(
        id = "regr.fuser",
        packages = c("mlr3extralearners", "fuser"),
        feature_types = c("logical", "integer", "numeric"),
        predict_types = "response",
        param_set = param_set,
        man = "mlr3extralearners::mlr_learners_regr.fuser",
        label = "Fuser"
      )
    }
  ),
  private = list(
    .train = function(task) {
      group_id = task$col_roles$group
      if (length(group_id) != 1L) {
        stopf("Learner 'regr.fuser' requires exactly one grouping column with role 'group'.")
      }

      feature_names = setdiff(task$feature_names, group_id)
      x = as_numeric_matrix(task$data(cols = feature_names))
      y = as.numeric(task$truth())

      if (length(y) != nrow(x)) {
        stopf("Target length (%i) must match the number of rows (%i).",
          length(y), nrow(x))
      }
      if (anyNA(x) || anyNA(y)) {
        stopf("Features and target must not contain missing values.")
      }

      groups = task$data(cols = group_id)[[1L]]
      if (is.factor(groups)) {
        groups = as.character(groups)
      }
      groups = as.vector(groups)
      if (length(groups) != nrow(x)) {
        stopf("Grouping column length (%i) must match the number of rows (%i).",
          length(groups), nrow(x))
      }
      if (anyNA(groups)) {
        stopf("Grouping column contains missing values.")
      }

      pv = self$param_set$get_values(tags = "train")
      if (!is.null(pv$lambda) && (!is.numeric(pv$lambda) || length(pv$lambda) != 1L)) {
        stopf("Parameter 'lambda' must be a numeric scalar or NULL.")
      }
      if (!is.numeric(pv$gamma) || length(pv$gamma) != 1L) {
        stopf("Parameter 'gamma' must be a numeric scalar.")
      }
      k = length(unique(groups))

      G = pv$G
      pv = remove_named(pv, "G")
      if (is.null(G)) {
        G = matrix(1, k, k)
      } else {
        if (!is.matrix(G) || nrow(G) != k || ncol(G) != k) {
          stopf("Parameter 'G' must be a %ix%i matrix aligned with sorted group levels.", k, k)
        }
      }

      beta = invoke(fuser::fusedL2DescentGLMNet,
        X = x,
        y = y,
        groups = groups,
        G = G,
        .args = pv
      )

      if (is.null(colnames(beta))) {
        colnames(beta) = sort(unique(groups))
      }

      list(
        beta = beta,
        group_names = colnames(beta),
        feature_names = feature_names
      )
    },

    .predict = function(task) {
      group_id = task$col_roles$group
      if (length(group_id) != 1L) {
        stopf("Learner 'regr.fuser' requires exactly one grouping column with role 'group'.")
      }

      groups = task$data(cols = group_id)[[1L]]
      if (is.factor(groups)) {
        groups = as.character(groups)
      }
      groups = as.vector(groups)
      if (anyNA(groups)) {
        stopf("Grouping column contains missing values.")
      }

      unknown = setdiff(unique(groups), self$model$group_names)
      if (length(unknown) > 0L) {
        stopf("Unknown groups found at prediction time: %s", paste(unknown, collapse = ", "))
      }

      x = as_numeric_matrix(task$data(cols = self$model$feature_names))
      if (length(groups) != nrow(x)) {
        stopf("Grouping column length (%i) must match the number of rows (%i).",
          length(groups), nrow(x))
      }
      if (anyNA(x)) {
        stopf("Features must not contain missing values.")
      }
      beta = self$model$beta
      if (ncol(x) != nrow(beta)) {
        stopf("Feature count mismatch: expected %i, got %i.", nrow(beta), ncol(x))
      }
      group_names = self$model$group_names

      y_pred = numeric(nrow(x))
      for (g in group_names) {
        rows = which(groups == g)
        if (!length(rows)) {
          next
        }
        y_pred[rows] = as.numeric(x[rows, , drop = FALSE] %*% beta[, g, drop = FALSE])
      }

      list(response = y_pred)
    }
  )
)

.extralrns_dict$add("regr.fuser", LearnerRegrFuser)
