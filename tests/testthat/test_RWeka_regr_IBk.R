install_learners("regr.IBk")

skip_on_os("windows")

test_that("autotest", {
  learner = LearnerRegrIBk$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})


test_that("Paramtest regr.IBk train", {
  learner = lrn("regr.IBk")
  fun = RWeka::IBk
  exclude = weka_control_args(RWeka::IBk)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = weka_control_args(RWeka::IBk)
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("Weka_control IBk predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::IBk
  learner = lrn("regr.IBk")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
