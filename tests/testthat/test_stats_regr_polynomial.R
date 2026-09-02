skip_if_not_installed("stats")

test_that("autotest", {
  learner = lrn("regr.polynomial")
  expect_learner(learner)
  result = run_autotest(learner, predict_types = c("response", "se"))
  expect_true(result, info = result$error)
})

test_that("degree changes the model", {
  task = tsk("mtcars")

  pred_1 = lrn("regr.polynomial", degree = 1L)$train(task)$predict(task)$response
  pred_3 = lrn("regr.polynomial", degree = 3L)$train(task)$predict(task)$response

  expect_false(all(pred_1 == pred_3))
})

test_that("degree is capped for features with few distinct values", {
  data = data.table(y = rnorm(30), x = rnorm(30), bin = rep(0:1, 15), const = 1)
  task = as_task_regr(data, target = "y")

  learner = lrn("regr.polynomial", degree = 4L)
  learner$train(task)

  labels = attr(stats::terms(learner$model), "term.labels")
  expect_set_equal(
    labels,
    c("poly(x, degree = 4, raw = FALSE)", "poly(bin, degree = 1, raw = FALSE)", "const")
  )
  expect_numeric(learner$predict(task)$response, any.missing = FALSE)
})
