skip_if_not_installed("RSNNS")

test_that("paramtest classif.mlp train", {
  learner = lrn("classif.mlp")
  fun = RSNNS:::mlp.default # nolint
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "outputActFunc" # derived from linOut
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.mlp predict", {
  learner = lrn("classif.mlp")
  fun = RSNNS:::predict.rsnns # nolint
  exclude = c(
    "object", # handled internally
    "newdata" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
