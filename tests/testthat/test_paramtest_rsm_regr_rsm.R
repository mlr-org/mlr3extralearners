test_that("regr.rsm train", {
  learner = lrn("regr.rsm")
  fun = rsm::rsm
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "modelfun", # custom parameter
    "formula"
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.rsm predict", {
  learner = lrn("regr.rsm")
  fun = predict
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata" # handled internally

  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
