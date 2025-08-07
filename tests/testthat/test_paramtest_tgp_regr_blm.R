test_that("regr.blm train", {
  learner = lrn("regr.blm")
  fun = tgp::blm
  exclude = c(
    "X", # handled internally
    "Z", # handled internally
    "XX"
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.blm predict", {
  learner = lrn("regr.blm")
  fun = tgp:::predict.tgp # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "XX" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
