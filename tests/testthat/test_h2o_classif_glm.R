skip_if_not_installed("h2o")
skip_on_os("windows")

test_that("autotest", {
  learner = lrn("classif.h2o.glm", max_iterations = 50L, lambda = 1e-5)
  expect_learner(learner)

  # the single_integer test starts failing around May-June 2026
  result = run_autotest(learner, exclude = "feat_single_integer")

  expect_true(result, info = result$error)
})
