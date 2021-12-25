install_learners("dens.logspline")
load_tests("dens.logspline")

test_that("autotest", {
  learner = LearnerDensLogspline$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("paramtest dens.logspline", {
  learner = lrn("dens.logspline")
  fun = logspline::logspline
  exclude = c(
    "x" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})
