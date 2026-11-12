skip_if_not_installed("brnn")

test_that("paramtest regr.brnn train", {
  learner = lrn("regr.brnn")
  fun = c(brnn:::brnn.default)  # nolint
  exclude = c(
    "x", # handled internally
    "y" # handled internally
  )
  result = run_paramtest(learner, fun, exclude, tag = "train")
  expect_true(result, info = result$error)
})

test_that("paramtest regr.brnn predict", {
  learner = lrn("regr.brnn")
  fun = brnn:::predict.brnn  # nolint
  exclude = c(
    "object", # handled internally
    "newdata" # handled internally
  )
  result = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_true(result, info = result$error)
})