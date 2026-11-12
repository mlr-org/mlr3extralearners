skip_if_not_installed("h2o")

test_that("autotest", {

  learner = lrn("regr.h2o.glm", max_iterations = 25L, lambda = 1e-05)
  expect_learner(learner)

  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
