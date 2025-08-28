# default competing risk score needs this package
skip_if_not_installed("riskRegression")
skip_if_not_installed("randomForestSRC")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("cmprsk.rfsrc", ntree = 20, importance = "TRUE", na.action = "na.impute")
  expect_learner(learner)
  # remove property as prediction doesn't work due to rsfrc bug
  learner$properties = setdiff(learner$properties, "selected_features")

    # suppress expected warnings during encapsulation autotest from fallback
    # `cmprsk.aalen`, which lacks the 'missings' and 'importance' properties of
    # `cmprsk.rfsrc`
    result = suppress_fallback_warnings(
      run_autotest(learner, N = 42, check_replicable = FALSE)
    )
    expect_true(result, info = result$error)
})

test_that("importance/selected/oob_error", {
  task = tsk("pbc")
  learner = lrn("cmprsk.rfsrc", ntree = 20)
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set parameter 'var.used'")

  learner$param_set$values = list(
    var.used = "all.trees", importance = "random"
  )
  learner$train(task)
  expect_character(learner$selected_features())
  expect_error(learner$predict(task), "Prediction is not supported")

  expect_numeric(learner$importance(), names = "named") # cause = 1 by default
  expect_numeric(learner$importance(cause = 2), names = "named")
  expect_error(learner$importance(cause = 3), "Invalid cause")

  expect_number(learner$oob_error()) # cause = "mean" by default
  expect_number(learner$oob_error(cause = 1))
  expect_number(learner$oob_error(cause = 2))
  expect_error(learner$oob_error(cause = 3), "Invalid cause")
})
