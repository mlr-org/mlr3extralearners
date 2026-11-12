skip_if_not_installed("pls")

test_that("paramtest regr.pcr train", {
  learner = lrn("regr.pcr")
  fun = pls::mvr
  exclude = c(
    "formula", # handled via mlr3 Task
    "Y.add", # target augmentation not exposed
    "data", # handled via mlr3 Task
    "subset", # handled via mlr3 Task
    "na.action", # handled via mlr3 Task
    "center", # not exposed by learner
    "validation" # not exposed by learner
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.pcr predict", {
  learner = lrn("regr.pcr")
  fun = pls:::predict.mvr # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "ncomp", # learner does not expose predict-specific override
    "comps", # not exposed by learner
    "type", # handled internally
    "na.action" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
