test_that("paramtest regr.mars train", {
  learner = lrn("regr.mars")
  fun = mda::mars
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "w", # handled internally
    "wp", # ignored
    "prevfit" # ignored
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.mars predict", {
  learner = lrn("regr.mars")
  fun = mda:::predict.mars # nolint
  exclude = c(
    "object", # handled internally
    "newdata" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
