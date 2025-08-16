skip_if_not_installed("ada")
skip_if_not_installed("rpart")

test_that("classif.ada train", {
  learner = lrn("classif.ada")
  fun = ada:::ada.default
  exclude = c(
    "x",
    "y",
    "na.action",
    "test.x",
    "test.y",
    "subset",  # handled internally
    formalArgs(rpart::rpart.control)
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.ada predict", {
  learner = lrn("classif.ada")
  fun = ada:::predict.ada # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata", # handled internally
    "type" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
