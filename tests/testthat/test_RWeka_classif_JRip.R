install_learners("classif.JRip")

skip_on_os("windows")

test_that("autotest", {
  learner = LearnerClassifJRip$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("Paramtest classif.JRip train", {
  learner = lrn("classif.JRip")
  fun = RWeka::JRip
  exclude = weka_control_args(RWeka::JRip)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = weka_control_args(RWeka::JRip)
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("Weka_control JRip predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::JRip
  learner = lrn("classif.JRip")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
