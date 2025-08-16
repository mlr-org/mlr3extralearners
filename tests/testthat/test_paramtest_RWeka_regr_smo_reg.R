skip_if_not_installed("RWeka")

skip_on_os("windows")

test_that("regr.smo_reg train", {
  learner = lrn("regr.smo_reg")
  fun = RWeka::make_Weka_classifier("weka/classifiers/functions/SMOreg")
  exclude = weka_control_args(fun)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", "T_improved", "V_improved", "P_improved", "L_improved", "W_improved",
              "C_poly", "E_poly", "L_poly", exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = setdiff(weka_control_args(fun), c("T", "V", "P", "L", "W", "C", "E"))
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("regr.smo_reg predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::make_Weka_classifier('weka/classifiers/functions/SMOreg')
  learner = lrn("regr.smo_reg")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict") # nolint
  expect_paramtest(paramtest)
})
