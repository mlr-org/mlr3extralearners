install_learners("regr.fnn")

test_that("autotest", {
  learner = LearnerRegrFNN$new()
  learner$param_set$values = list(k = 10)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.fnn", {
  learner = lrn("regr.fnn")
  fun = FNN::knn.reg # replace!
  exclude = c(
    "train", # handled by mlr
    "test", # handled by mlr
    "y" # handled by mlr
  )

  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})
