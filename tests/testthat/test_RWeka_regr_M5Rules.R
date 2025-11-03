skip_on_os("windows")

test_that("autotest", {
  skip_if_not_installed("RWeka")
  learner = lrn("regr.M5Rules")
  expect_learner(learner)
  # these parameters have to be set as otherwise the sanity check does not run
  learner$param_set$values = list(M = 1L, N = TRUE, U = TRUE)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
