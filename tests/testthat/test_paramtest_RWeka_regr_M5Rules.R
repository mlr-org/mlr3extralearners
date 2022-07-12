test_that("paramtest regr.M5Rules train", {
  learner = lrn("regr.M5Rules")
  fun = RWeka::M5Rules
  exclude = weka_control_args(RWeka::M5Rules)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = weka_control_args(RWeka::M5Rules)
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("paramtest regr.M5Rules predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::M5Rules
  learner = lrn("regr.M5Rules")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict") # nolint
  expect_paramtest(paramtest)
})
