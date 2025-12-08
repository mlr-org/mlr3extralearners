skip_if_not_installed("frbs")

test_that("paramtest regr.frbs train", {
  learner = lrn("regr.frbs")
  fun_list = list(frbs::frbs.learn)
  exclude = c(
    "data.train", # handled by mlr3
    "range.data", # optional, computed from training data when omitted
    "control" # constructed from learner parameters
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.frbs predict", {
  learner = lrn("regr.frbs")
  fun_list = list(frbs:::predict.frbs) # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
