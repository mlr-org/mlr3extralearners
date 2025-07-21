test_that("regr.gbm", {
  learner = lrn("regr.gbm")
  fun = gbm::gbm
  exclude = c(
    "formula", # handled by mlr3
    "data", # handled by mlr3
    "weights", # handled by mlr3
    "class.stratify.cv", # handled by mlr3
    "single.tree", # we don't allow for single trees
    "newdata", # handled by mlr3
    "object", # handled by mlr3
    "type" # we only allow type "link" to get the response prediction
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.gbm", {
  learner = lrn("regr.gbm")
  fun = gbm::predict.gbm
  exclude = c(
    "formula", # handled by mlr3
    "data", # handled by mlr3
    "weights", # handled by mlr3
    "class.stratify.cv", # handled by mlr3
    "single.tree", # we don't allow for single trees
    "newdata", # handled by mlr3
    "object", # handled by mlr3
    "type" # we only allow type "link" to get the response prediction
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
