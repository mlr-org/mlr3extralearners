library(mlr3extralearners)
mlr3extralearners::install_learners("dens.pen")

test_that("dens.pen", {
  learner = lrn("dens.pen")
  fun = pendensity::pendensity
  exclude = c(
    "form", # handled internally
    "data" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
