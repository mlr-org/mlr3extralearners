install_learners("classif.J48")

skip_on_os("windows")

test_that("autotest", {
  learner = LearnerClassifJ48$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("Paramtest classif.J48 train", {
  learner = lrn("classif.J48")
  fun = RWeka::J48
  exclude = weka_control_args(RWeka::J48)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = weka_control_args(RWeka::J48)
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("Weka_control J48 predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::J48
  learner = lrn("classif.J48")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
