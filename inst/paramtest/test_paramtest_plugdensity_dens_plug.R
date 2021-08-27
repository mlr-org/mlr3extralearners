library(mlr3extralearners)
mlr3extralearners::install_learners("dens.plug")

test_that("dens.plug", {
  learner = lrn("dens.plug")
  fun = plugdensity::plugin.density
  exclude = c(
    "x", # handled internally
    "nout", # not required when `xout` used
    "xout" # handled in predict
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
