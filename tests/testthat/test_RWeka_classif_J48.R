install_learners("classif.J48")

skip_on_os("windows")

test_that("autotest", {
  set.seed(1)
  learner = LearnerClassifJ48$new()
  expect_learner(learner)
  result = run_autotest(learner, exclude = "missings_each_row")
  expect_true(result, info = result$error)
})

test_that("classif.J48", {
  learner = lrn("classif.J48")
  fun = RWeka::J48
  exclude = weka_control_args(RWeka::J48)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest)
})

test_that("Weka_control J48", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::J48
  learner = lrn("classif.J48")
  control_args = weka_control_args(RWeka::J48)
  expect_true(all(control_args %in% learner$param_set$ids()))
})


test_that("Parameters can be set", {
  learner = lrn("classif.J48")
  default_values = learner$param_set$default
  default_values[["N"]] = NULL #otherwise there are problems with the dependencies that are
  # checked explicitly by mlr3
  learner$param_set$values = default_values
  task = tsk("iris")
  expect_error(learner$train(task), NA)
})
