library(mlr3extralearners)
install_learners("dens.logspline")

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
