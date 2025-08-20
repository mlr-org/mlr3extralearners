skip_if_not_installed("qgam")

test_that("regr.mqgam train", {
  learner = lrn("regr.mqgam")
  fun = qgam::mqgam
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

test_that("regr.mqgam predict", {
  learner = lrn("regr.mqgam")
  fun = qgam::qdo
  exclude = c(
    "obj", # handled internally
    "fun", # handled internally
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
