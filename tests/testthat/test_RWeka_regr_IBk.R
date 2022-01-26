install_learners("regr.IBk")

skip_on_os("windows")

test_that("autotest", {
  learner = LearnerRegrIBk$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("train regr.IBk", {
  learner = lrn("regr.IBk")
  fun = RWeka::IBk
  control_args = weka_control_args(RWeka::IBk)
  expect_true(all(control_args %in% learner$param_set$ids()))
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", control_args)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})


test_that("Parameters can be set", {
  learner = lrn("regr.IBk")
  learner$param_set$values = learner$param_set$default
  task = tsk("boston_housing")
  expect_error(learner$train(task), NA)
})
