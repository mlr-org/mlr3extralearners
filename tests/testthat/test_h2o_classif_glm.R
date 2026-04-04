skip_if_not_installed("h2o")
skip_on_os("windows")

test_that("autotest", {

  learner = lrn("classif.h2o.glm", max_iterations = 50L, lambda = 1e-5)
  expect_learner(learner)

  result = run_autotest(learner)

  expect_true(result, info = result$error)
})
