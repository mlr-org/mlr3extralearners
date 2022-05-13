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
  learn = LearnerSurvRandomForestSRC$new()
  learn$param_set$values = list(estimator = "kaplan")
  learn$train(task)
  expect_error(learn$importance(), "Set 'importance'")
  expect_error(learn$selected_features(), "Set 'var.used'")
  learn$param_set$values = list(estimator = "nelson", var.used = "all.trees", importance = "random")
  learn$train(task)
  expect_silent(learn$selected_features())
  expect_silent(learn$importance())
  expect_silent(learn$oob_error())
})
