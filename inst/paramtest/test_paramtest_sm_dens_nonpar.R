library(mlr3extralearners)
mlr3extralearners::install_learners("dens.nonpar")

test_that("dens.nonpar", {
  learner = lrn("dens.nonpar")
  fun = sm::sm.density
  exclude = c(
    "x", # handled internally
    "weights", # handled by task
    "model" # only required for plotting
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
