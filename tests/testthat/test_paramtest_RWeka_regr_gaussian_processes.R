skip_if_not_installed("RWeka")

test_that("regr.gaussian_processes train", {
  learner = lrn("regr.gaussian_processes")
  fun = RWeka::make_Weka_classifier("weka/classifiers/functions/GaussianProcesses")
  exclude = weka_control_args(fun)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", "E_poly", "L_poly", "C_poly", exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = setdiff(weka_control_args(fun), c("E", "C"))
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("regr.gaussian_processes predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::make_Weka_classifier('weka/classifiers/functions/GaussianProcesses')
  learner = lrn("regr.gaussian_processes")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict") # nolint
  expect_paramtest(paramtest)
})
