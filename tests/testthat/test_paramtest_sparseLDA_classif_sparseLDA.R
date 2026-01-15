skip_if_not_installed("sparseLDA")
skip_if_not_installed("elasticnet")
skip_if_not_installed("MASS")

test_that("classif.sparseLDA train", {
  learner = lrn("classif.sparseLDA")
  fun = sparseLDA:::sda.default # nolint
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "Q", # not exposed
    "stop" # not exposed
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.sparseLDA predict", {
  learner = lrn("classif.sparseLDA")
  fun = sparseLDA:::predict.sda # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
