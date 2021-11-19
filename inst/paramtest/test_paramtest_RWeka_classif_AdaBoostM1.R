library(mlr3extralearners)
mlr3extralearners::install_learners("classif.AdaBoostM1")

test_that("classif.AdaBoostM1", {
  learner = lrn("classif.AdaBoostM1")
  fun = RWeka::AdaBoostM1
  exclude = weka_control_args(RWeka::AdaBoostM1)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest)
})

test_that("Weka_control AdaBoostM1", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::AdaBoostM1
  learner = lrn("classif.AdaBoostM1")
  control_args = weka_control_args(RWeka::AdaBoostM1)
  expect_true(all(control_args %in% learner$param_set$ids()))
})


test_that("Parameters can be set", {
  learner1 = lrn("classif.AdaBoostM1")
  learner1$param_set$values = learner1$param_set$default
  task = tsk("iris")
  expect_error(learner$train(task), NA)
})

