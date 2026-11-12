skip_if_not_installed("catboost")

test_that("autotest", {
  learner = lrn("regr.catboost", iterations = 10)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("early stopping works", {
  learner = lrn("regr.catboost", iterations = 1000, early_stopping_rounds = 10)
  learner$validate = 0.2
  task = tsk("mtcars")

  learner$train(task)

  expect_list(learner$internal_tuned_values)
  expect_number(learner$internal_tuned_values$iterations)
})

test_that("best valid scores", {
  set.seed(1)
  task = tsk("mtcars")

  # `use_best_model` truncates the model to the best iteration,
  # so the final model is the best model and both extractors agree
  learner = lrn("regr.catboost", iterations = 500, eval_metric = "RMSE",
    early_stopping_rounds = 20, validate = 0.3)
  learner$train(task)

  expect_list(learner$best_valid_scores, types = "numeric")
  expect_equal(names(learner$best_valid_scores), "RMSE")
  expect_equal(learner$best_valid_scores, learner$internal_valid_scores)
  expect_equal(learner$internal_tuned_values$iterations, learner$model$tree_count)

  # the loss function is tracked next to the eval metric
  learner = lrn("regr.catboost", iterations = 300, eval_metric = "MAE",
    early_stopping_rounds = 20, validate = 0.3)
  learner$train(task)
  expect_names(names(learner$best_valid_scores), permutation.of = c("MAE", "RMSE"))

  # without early stopping no best iteration is tracked
  learner = lrn("regr.catboost", iterations = 50, validate = 0.3)
  learner$train(task)
  expect_equal(learner$best_valid_scores, named_list())
  expect_list(learner$internal_valid_scores, types = "numeric")

  # without validation nothing is reported at all
  learner = lrn("regr.catboost", iterations = 50)
  learner$train(task)
  expect_null(learner$best_valid_scores)
  expect_null(learner$internal_valid_scores)
})
