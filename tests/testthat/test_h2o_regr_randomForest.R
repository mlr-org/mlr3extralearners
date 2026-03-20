skip_if_not_installed("h2o")

test_that("autotest", {
  learner = lrn("regr.h2o.randomForest", ntrees = 10L, max_depth = 10L, seed = 42L)
  expect_learner(learner)

  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
