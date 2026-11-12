skip_if_not_installed("h2o")

test_that("autotest", {

  learner = lrn("classif.h2o.gbm", ntrees = 10L, max_depth = 3L, min_rows = 1, seed = 42L)
  expect_learner(learner)

  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
