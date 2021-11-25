install_learners("classif.JRip")

skip_on_os("windows")

test_that("autotest", {
  learner = LearnerClassifJRip$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.JRip", {
  learner = lrn("classif.JRip")
  fun = RWeka::JRip
  exclude = weka_control_args(RWeka::JRip)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest)
})

test_that("Weka_control JRip", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::JRip
  learner = lrn("classif.JRip")
  control_args = weka_control_args(RWeka::JRip)
  expect_true(all(control_args %in% learner$param_set$ids()))
})


test_that("Parameters can be set", {
  learner = lrn("classif.JRip")
  learner$param_set$values = learner$param_set$default
  task = tsk("iris")
  expect_error(learner$train(task), NA)
})

