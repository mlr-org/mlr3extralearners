skip_if_not_installed("gbm")

test_that("autotest", {
  learner = lrn("regr.gbm")
  learner$param_set$values = mlr3misc::insert_named(
    learner$param_set$values,
    list(n.minobsinnode = 1))
  expect_learner(learner)
  capture.output({
    result = run_autotest(learner, predict_types = "response")
  })
  expect_true(result, info = result$error)
})

test_that("quantile prediction", {
  learner = lrn("regr.gbm",
    predict_type = "quantiles",
    quantiles = 0.1,
    n.minobsinnode = 1)
  task = tsk("mtcars")

  capture.output({
    learner$train(task)
  })
  pred = learner$predict(task)

  expect_matrix(pred$quantiles, ncol = 1L)
  expect_true(!any(apply(pred$quantiles, 1L, is.unsorted)))
  expect_equal(pred$response, pred$quantiles[, 1L])

  tab = as.data.table(pred)
  expect_names(names(tab), identical.to = c("row_ids", "truth", "q0.1", "response"))
  expect_equal(tab$response, tab$q0.1)
})
