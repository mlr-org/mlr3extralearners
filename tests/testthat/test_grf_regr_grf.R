skip_if_not_installed("grf")

test_that("autotest", {
  learner = lrn("regr.grf")
  expect_learner(learner)
  result = run_autotest(learner, predict_types = c("response", "se"))
  expect_true(result, info = result$error)
})

test_that("se predictions require ci.group.size >= 2", {
  task = tsk("mtcars")

  learner = lrn("regr.grf", num.trees = 50L, ci.group.size = 1L, predict_type = "se")
  learner$train(task)

  expect_error(learner$predict(task), "ci.group.size")
})
