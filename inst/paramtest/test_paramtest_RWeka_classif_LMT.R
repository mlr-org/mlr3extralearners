library(mlr3extralearners)
mlr3extralearners::install_learners("classif.LMT")

test_that("classif.LMT", {
  learner = lrn("classif.LMT")
  fun = RWeka::LMT
  exclude = weka_control_args(RWeka::LMT)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest)
})

test_that("Weka_control LMT", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::LMT
  learner = lrn("classif.LMT")
  control_args = weka_control_args(RWeka::LMT)
  expect_true(all(control_args %in% learner$param_set$ids()))
})


test_that("Parameters can be set", {
  learner = lrn("classif.LMT")
  learner$param_set$values = learner$param_set$default
  task = tsk("iris")
  expect_error(learner$train(task), NA)
})
