install_learners("classif.fnn")

test_that("autotest", {
  learner = LearnerClassifFNN$new()
  learner$param_set$values = list(k = 10)
  expect_learner(learner)
  result = run_autotest(learner, predict_types = "response")
  expect_true(result, info = result$error)
})

test_that("classif.fnn", {
  learner = lrn("classif.fnn")
  fun = FNN::knn # replace!
  exclude = c(
    "train", # handled by mlr
    "test", # handled by mlr
    "y", # handled by mlr
    "cl", # this is essentially the target feature, handled by mlr
    "prob" # handled by mlr
  )

  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})
