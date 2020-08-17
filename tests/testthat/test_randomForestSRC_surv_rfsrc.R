install_learners("surv.rfsrc")

test_that("autotest", {
  learner = lrn("surv.rfsrc")
  learner$param_set$values = insert_named(
    learner$param_set$values,
    list(importance = "random", na.action = "na.impute"))
  expect_learner(learner)
  set.seed(1)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("importance/selected", {
  set.seed(1)
  task = tsk("rats")
  learner = lrn("surv.rfsrc", estimator = "kaplan")
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set 'var.used'")
  learner = lrn("surv.rfsrc",
    estimator = "nelson", var.used = "all.trees",
    importance = "random")$train(task)
  expect_silent(learner$selected_features())
  expect_silent(learner$importance())
  expect_silent(learner$oob_error())
})
