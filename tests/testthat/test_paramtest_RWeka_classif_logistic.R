skip_on_os("windows")

test_that("classif.logistic train", {
  learner = lrn("classif.logistic")
  fun = RWeka::Logistic
  exclude = weka_control_args(fun)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = weka_control_args(fun)
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("classif.logistic predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::Logistic
  learner = lrn("classif.logistic")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict") # nolint
  expect_paramtest(paramtest)
})
