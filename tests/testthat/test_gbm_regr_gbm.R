test_that("autotest", {
  learner = LearnerRegrGBM$new()
  learner$param_set$values = mlr3misc::insert_named(
    learner$param_set$values,
    list(n.minobsinnode = 1))
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("quantile prediction", {
  learner = mlr3::lrn("regr.gbm", predict_type = "quantile", n.minobsinnode = 1)
  learner$quantiles = 0.1
  learner$quantile_response = 0.1
  task = tsk("mtcars")

  learner$train(task)
  pred = learner$predict(task)

  expect_matrix(pred$quantile, ncol = 1L)
  expect_true(!any(apply(pred$quantile, 1L, is.unsorted)))
  expect_equal(pred$response, pred$quantile[, 1L])

  tab = as.data.table(pred)
  expect_names(names(tab), identical.to = c("row_ids", "truth", "q0.1", "response"))
  expect_equal(tab$response, tab$q0.1)
})
