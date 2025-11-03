skip_if_not_installed("randomForestSRC")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("surv.rfsrc", ntree = 20, importance = "random", na.action = "na.impute")
  expect_learner(learner)
  # remove property as prediction doesn't work due to rsfrc bug
  learner$properties = setdiff(learner$properties, "selected_features")

  result = run_autotest(learner, check_replicable = FALSE, N = 100)
  expect_true(result, info = result$error)
})

test_that("importance/selected", {
  withr::local_seed(1)
  task = tsk("rats")
  learner = lrn("surv.rfsrc", ntree = 20)
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set parameter 'var.used'")

  learner$param_set$values = list(
    var.used = "all.trees", importance = "random"
  )
  learner$train(task)
  expect_character(learner$selected_features())
  expect_numeric(learner$importance(), names = "named")
  expect_error(learner$predict(task), "Prediction is not supported")
})
