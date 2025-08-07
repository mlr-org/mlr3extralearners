test_that("regr.btlm train", {
  learner = lrn("regr.btlm")
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
