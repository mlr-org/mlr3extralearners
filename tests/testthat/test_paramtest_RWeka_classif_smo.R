skip_if_not_installed("RWeka")

skip_on_os("windows")

test_that("classif.smo train", {
  learner = lrn("classif.smo")
  fun = RWeka::SMO
  exclude = weka_control_args(fun)
  # formula and data are handled via mlr3
  # mlr3 does not have the `control` argument because the parameters can be specified directly
  exclude = c("formula", "data", "control", "E_poly", "L_poly", "C_poly", "C_logistic", "R_logistic", "M_logistic",
              exclude)
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
  control_args = setdiff(weka_control_args(fun), c("E", "L", "C", "R", "M"))
  expect_true(all(control_args %in% learner$param_set$ids()))
})

test_that("classif.smo predict", {
  # Here we test that the learner implements those arguments that are passed via the
  # control argument to RWeka::SMO
  learner = lrn("classif.smo")
  exclude = c( # all handled by mlr3
    "object",
    "newdata",
    "type"
  )
  paramtest = run_paramtest(learner, RWeka:::predict.Weka_classifier, exclude, tag = "predict") # nolint
  expect_paramtest(paramtest)
})
