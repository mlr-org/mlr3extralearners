test_that("importance/selected", {
  set.seed(1)
  task = tsk("boston_housing")
  learner = lrn("regr.rfsrc")
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set 'var.used'")
})

test_that("autotest", {
  learner = lrn("regr.rfsrc")
  learner$param_set$values = list(
    importance = "random", na.action = "na.impute",
    do.trace = TRUE)
  expect_learner(learner)
  set.seed(1)
  result = run_autotest(learner, exclude = "single")
  expect_true(result, info = result$error)
})
