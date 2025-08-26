skip_if_not_installed("class")

# class::knn() not called in learner$train but directly in learner$predict.
# learner$train() simply initializes the model state with the current parameters.
test_that("classif.knn train and predict", {
  learner = lrn("classif.knn")
  fun = class::knn # nolint
  exclude = c(
    "train", # handled internally
    "test", # handled internally
    "cl" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})
