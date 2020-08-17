library(mlr3extralearners)
install_learners("dens.spline")

test_that("dens.spline", {
  learner = lrn("dens.spline")
  fun = gss::ssden
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "subset" # handled by task
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
