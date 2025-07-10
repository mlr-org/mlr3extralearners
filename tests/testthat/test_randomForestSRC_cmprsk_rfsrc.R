test_that("autotest", {
  with_seed(42, {
    learner = lrn("cmprsk.rfsrc", ntree = 20, importance = "TRUE", na.action = "na.impute")
    expect_learner(learner)
    result = run_autotest(learner, N = 42, check_replicable = FALSE)
    expect_true(result, info = result$error)
  })
})

test_that("importance/selected/oob_error", {
  task = tsk("pbc")
  learner = lrn("cmprsk.rfsrc", ntree = 20)
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set 'var.used'")

  learner$param_set$values = list(
    var.used = "all.trees", importance = "random"
  )
  learner$train(task)
  expect_character(learner$selected_features())

  expect_numeric(learner$importance(), names = "named") # cause = 1 by default
  expect_numeric(learner$importance(cause = 2), names = "named")
  expect_error(learner$importance(cause = 3), "Invalid cause")

  expect_number(learner$oob_error()) # cause = "mean" by default
  expect_number(learner$oob_error(cause = 1))
  expect_number(learner$oob_error(cause = 2))
  expect_error(learner$oob_error(cause = 3), "Invalid cause")
})
