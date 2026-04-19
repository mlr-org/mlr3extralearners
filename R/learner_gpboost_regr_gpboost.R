#' @title GPBoost Regression Learner
#' @description Regression learner using the GPBoost algorithm, which combines
#'   gradient boosting with Gaussian process and mixed effects models.
#'   Call `LearnerRegrGPBoost$new()` to create a new instance.
#' @author Florian Delage
#' @name LearnerRegrGPBoost
#' @importFrom gpboost gpb.train gpb.Dataset GPModel
#' @importFrom paradox ps p_int p_dbl
#' @examples
#' \donttest{
#'   task = mlr3::tsk("mtcars")
#'   learner = LearnerRegrGPBoost$new()
#'   learner$train(task)
#'   predictions = learner$predict(task)
#'   print(predictions)
#' }
#' @export
LearnerRegrGPBoost = R6::R6Class(
  "LearnerRegrGPBoost",
  inherit = mlr3::LearnerRegr,
  public = list(
    initialize = function() {
      ps = paradox::ps(
        nrounds = paradox::p_int(1L,   default = 100L, tags = "train"),
        learning_rate = paradox::p_dbl(0, 1, default = 0.1,  tags = "train"),
        num_leaves = paradox::p_int(2L,   default = 31L,  tags = "train"),
        max_depth = paradox::p_int(-1L,  default = 3L,   tags = "train"),
        min_data_in_leaf = paradox::p_int(1L,  default = 20L,  tags = "train")
      )
      super$initialize(
        id = "regr.gpboost",
        param_set = ps,
        predict_types = "response",
        feature_types = c("integer", "numeric", "factor", "ordered"),
        properties = "missings",
        packages = "gpboost",
        label = "GPBoost Regression"
      )
    }
  ),
  private = list(
    .train = function(task) {
      pv = self$param_set$get_values(tags = "train")
      
      X = data.matrix(task$data(cols = task$feature_names))
      y = task$truth()
      group_cols = task$col_roles$group

      if (length(group_cols) == 2L) {
        coords = as.matrix(task$data(cols = group_cols))
        gp_model = gpboost::GPModel(gp_coords = coords, likelihood = "gaussian")
      } else if (length(group_cols) == 1L) {
        group_data = task$data(cols = group_cols)[[1L]]
        gp_model = gpboost::GPModel(group_data = group_data, likelihood = "gaussian")
      } else {
        # basic boosting algorithm
        gp_model = NULL
      }

      dataset = gpboost::gpb.Dataset(data = X, label = y)
      gpboost::gpb.train(
        data = dataset,
        gp_model = gp_model,
        params = pv,
        verbose = 0
      )
    },
    .predict = function(task) {
      X_test = data.matrix(task$data(cols = task$feature_names))
      group_col = task$col_roles$group
      gp_pred_data = if (length(group_col) > 0L) as.matrix(task$data(cols = group_col)) else NULL
      preds = predict(
        object = self$model,
        data = X_test,
        gp_coords_pred  = if (!is.null(gp_pred_data) && ncol(gp_pred_data) == 2L) gp_pred_data else NULL,
        group_data_pred = if (!is.null(gp_pred_data) && ncol(gp_pred_data) == 1L) gp_pred_data else NULL,
        predict_var = FALSE,
        pred_latent = FALSE
      )
      response = if (is.list(preds) && "response_mean" %in% names(preds)) {
        preds[["response_mean"]]
      } else {
        as.numeric(preds)
      }
      list(response = as.numeric(response))
    }
  )
)