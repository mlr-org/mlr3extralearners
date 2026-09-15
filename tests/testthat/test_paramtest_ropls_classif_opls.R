skip_if_not_installed("ropls")

test_that("paramtest classif.opls train", {
  learner = lrn("classif.opls")
  # the method signature matches the generic, so there is no `.local` wrapper for `s4_helper()`
  fun_list = list(
    getMethod("opls", "matrix")@.Data
  )
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "subset", # handled by mlr3
    "plotSubC", # only affects the diagnostic figure
    "fig.pdfC", # the diagnostic figure is always suppressed
    "info.txtC" # the model summary is always suppressed
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.opls predict", {
  learner = lrn("classif.opls")
  fun_list = list(
    s4_helper(getMethod("predict", "opls"))
  )
  exclude = c(
    "object", # handled by mlr3
    "newdata" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
