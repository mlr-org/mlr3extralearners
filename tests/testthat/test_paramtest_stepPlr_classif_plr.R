skip_if_not_installed("stepPlr")

test_that("classif.plr train", {
  learner = lrn("classif.stepPlr")
  fun = stepPlr::plr
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "weights" # set internally
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.plr predict", {
  learner = lrn("classif.stepPlr")
  fun = stepPlr::predict.plr # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newx", # handled internally
    "type" # set internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
