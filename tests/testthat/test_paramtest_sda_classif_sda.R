skip_if_not_installed("sda")

test_that("classif.sda train", {
  learner = lrn("classif.sda")
  fun = sda::sda
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "Xtrain",  # handled internally
    "L" # handled internally
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.sda predict", {
  learner = lrn("classif.sda")
  fun = sda::predict.sda # nolint
  exclude = c(
    "object", # handled internally
    "Xtest", # handled internally
    "verbose"
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
