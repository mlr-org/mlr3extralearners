install_learners("classif.PART")

skip_on_os("windows")

test_that("autotest", {
  set.seed(1)
  learner = LearnerClassifPART$new()
  expect_learner(learner)
  result = run_autotest(learner, exclude = "missings_each_row")
  expect_true(result, info = result$error)
})
library(mlr3extralearners)
mlr3extralearners::install_learners("classif.PART")

test_that("classif.PART", {
  learner = lrn("classif.PART")
  fun = RWeka::PART
  exclude = weka_control_args(RWeka::PART)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest)
})

test_that("Weka_control PART", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::PART
  learner = lrn("classif.PART")
  control_args = weka_control_args(RWeka::PART)
  expect_true(all(control_args %in% learner$param_set$ids()))
})


test_that("Parameters can be set", {
  learner = lrn("classif.PART")
  default_values = learner$param_set$default
  default_values[["N"]] = NULL #otherwise there are problems with the dependencies that are
  # checked explicitly by mlr3
  learner$param_set$values = default_values
  task = tsk("iris")
  expect_error(learner$train(task), NA)
})
