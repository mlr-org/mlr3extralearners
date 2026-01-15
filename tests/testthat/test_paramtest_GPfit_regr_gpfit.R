skip_if_not_installed("GPfit")

test_that("paramtest regr.gpfit train", {
  learner = lrn("regr.gpfit")
  fun = GPfit::GP_fit

  exclude = c(
    "X", # handled by mlr3
    "Y", # handled by mlr3
    "corr", # reparameterized via type/power/matern_nu_k
    "type", # handled by learner (builds corr)
    "power", # handled by learner (corr for exponential)
    "matern_nu_k", # handled by learner (corr nu for matern)
    "scale" # handled by learner (pre-scales data)
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.gpfit predict", {
  learner = lrn("regr.gpfit")
  fun = GPfit:::predict.GP # nolint

  exclude = c(
    "object", # handled by mlr3
    "xnew", # handled by mlr3
    "M" # not exposed by learner
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
