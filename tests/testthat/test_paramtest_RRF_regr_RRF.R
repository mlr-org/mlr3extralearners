skip_if_not_installed("RRF")

test_that("paramtest regr.RRF train", {
  learner = lrn("regr.RRF")
  fun_list = list(RRF:::RRF.default) # nolint
  exclude = c(
    "x", # handled via mlr3
    "y", # handled via mlr3
    "xtest", # handled via mlr3
    "ytest", # handled via mlr3
    "classwt", # classification only
    "cutoff", # classification only
    "norm.votes", # classification only
    "subset", # handled via mlr3
    "na.action", # handled via mlr3
    "weights" # mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.RRF predict", {
  learner = lrn("regr.RRF")
  fun_list = list(RRF:::predict.RRF) # nolint
  exclude = c(
    "object", # handled via mlr3
    "newdata", # handled via mlr3
    "type", # handled via mlr3
    "cutoff", # classification only
    "norm.votes", # classification only
    "na.action" # handled via mlr3
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
