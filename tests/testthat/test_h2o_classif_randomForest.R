skip_if_not_installed("h2o")

test_that("autotest", {

  learner = lrn("classif.h2o.randomForest")
  expect_learner(learner)

  result = run_autotest(learner)
  # feat_all tasks and thus importance test excluded because h2o internally creates
  # columns per factor level and importance names no longer match original feature names
  expect_true(result, info = result$error)
})
