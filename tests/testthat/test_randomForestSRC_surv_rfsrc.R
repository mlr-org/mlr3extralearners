test_that("autotest", {
  learner = lrn("surv.rfsrc")
  learner$param_set$values = insert_named(
    learner$param_set$values,
    list(importance = "random", na.action = "na.impute"))
  expect_learner(learner)
  set.seed(1)
  result = run_autotest(learner, check_replicable = FALSE, N = 100)
  expect_true(result, info = result$error)
})

test_that("importance/selected", {
  set.seed(1)
  task = tsk("rats")
  learner = lrn("surv.rfsrc", estimator = "kaplan")
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set 'var.used'")
  learner$param_set$values = list(
    estimator = "nelson", var.used = "all.trees", importance = "random"
  )
  learner$train(task)
  expect_silent(learner$selected_features())
  expect_silent(learner$importance())
})
