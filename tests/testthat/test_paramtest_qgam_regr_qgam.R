skip_if_not_installed("qgam")

test_that("regr.qgam train", {
  learner = lrn("regr.qgam")
  fun = qgam::qgam
  exclude = c(
    "data", # handled internally
    "control", # handled internally
    "link", # handled internally via control
    "qu" # handled internally via self$quantiles
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.qgam predict", {
  learner = lrn("regr.qgam")
  fun = mgcv::predict.gam
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "newdata.guaranteed", # handled internally
    "na.action", # handled internally
    "se.fit", # handled internally
    "terms", # not relevant for predict type "se" or "response"
    "exclude", # not relevant for predict type "se" or "response"
    "iterms.type", # not relevant for predict type "se" or "response"
    "qu"
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
