install_learners("dens.logspline")
load_tests("dens.logspline")

test_that("autotest", {
  learner = LearnerDensLogspline$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("dens.logspline", {
  learner = lrn("dens.logspline")
  fun = logspline::logspline
  exclude = c(
    "x" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
