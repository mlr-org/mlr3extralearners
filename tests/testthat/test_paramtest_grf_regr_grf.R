skip_if_not_installed("grf")

test_that("paramtest regr.grf train", {
  learner = lrn("regr.grf")
  fun_list = list(grf::regression_forest)
  exclude = c(
    "X", # handled by mlr3
    "Y", # handled by mlr3
    "sample.weights" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.grf predict", {
  learner = lrn("regr.grf")
  fun_list = list(grf:::predict.regression_forest) # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "estimate.variance" # handled by mlr3 predict_type
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
