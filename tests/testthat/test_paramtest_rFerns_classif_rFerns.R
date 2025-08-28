skip_if_not_installed("rFerns")

test_that("classif.rFerns train", {
  learner = lrn("classif.rFerns")
  fun = rFerns:::rFerns.default # nolint
  exclude = c(
    "x", # handled internally
    "y" # handled internally
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.rFerns predict", {
  learner = lrn("classif.rFerns")
  fun = rFerns:::predict.rFerns # nolint
  exclude = c(
    "object", # handled internally
    "x", # handled internally
    "newdata", # handled internally
    "scores"  # set to FALSE
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
