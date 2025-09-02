skip_if_not_installed("RWeka")

test_that("classif.decision_table train", {
  learner = lrn("classif.decision_table")
  fun = RWeka::make_Weka_classifier("weka/classifiers/rules/DecisionTable")
  exclude = weka_control_args(fun)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", "P_best", "D_best", "N_best", "S_best", exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = setdiff(weka_control_args(fun), c("P", "D", "N", "S"))
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("classif.decision_table predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::make_Weka_classifier('weka/classifiers/rules/DecisionTable')
  learner = lrn("classif.decision_table")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict") # nolint
  expect_paramtest(paramtest)
})
