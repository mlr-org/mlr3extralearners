skip_if_not_installed("adabag")

test_that("classif.adabag train", {
  learner = lrn("classif.adabag")
  fun = c(adabag::boosting, rpart::rpart.control)
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "control" # handled internally
  )
  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.adabag predict", {
  learner = lrn("classif.adabag")
  fun = adabag:::predict.boosting # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
