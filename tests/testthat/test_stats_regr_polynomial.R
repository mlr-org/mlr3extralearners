skip_if_not_installed("stats")

test_that("autotest", {
  learner = lrn("regr.polynomial")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("degree hyperparameter changes the model", {
  task = tsk("mtcars")

  lrn1 = lrn("regr.polynomial", degree = 1L)
  lrn1$train(task)

  lrn2 = lrn("regr.polynomial", degree = 3L)
  lrn2$train(task)

  pred1 = lrn1$predict(task)$response
  pred2 = lrn2$predict(task)$response

  expect_false(all(pred1 == pred2))
})
