skip_on_os("windows")

test_that("regr.multilayer_perceptron train", {
  learner = lrn("regr.multilayer_perceptron")
  fun = RWeka::make_Weka_classifier("weka/classifiers/functions/MultilayerPerceptron")
  exclude = weka_control_args(fun)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = setdiff(weka_control_args(fun), "G")
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("regr.multilayer_perceptron predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::make_Weka_classifier('weka/classifiers/functions/MultilayerPerceptron')
  learner = lrn("regr.multilayer_perceptron")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict") # nolint
  expect_paramtest(paramtest)
})
