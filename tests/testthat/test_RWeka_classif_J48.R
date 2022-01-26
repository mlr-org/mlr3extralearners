install_learners("classif.J48")

skip_on_os("windows")

test_that("autotest", {
  learner = LearnerClassifJ48$new()
  expect_learner(learner)
  result = run_autotest(learner, exclude = "missings_each_row")
  expect_true(result, info = result$error)
})

test_that("train classif.J48", {
  learner = lrn("classif.J48")
  fun = RWeka::J48
  control_args = weka_control_args(RWeka::J48)
  expect_true(all(control_args %in% learner$param_set$ids()))
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", control_args)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})
