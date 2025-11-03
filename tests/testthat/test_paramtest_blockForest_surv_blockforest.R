skip_if_not_installed("mlr3proba")
skip_if_not_installed("blockForest")

test_that("surv.blockforest", {
  learner = LearnerSurvBlockForest$new()
  fun = blockForest::blockfor
  exclude = c(
    "X", # handled via mlr3
    "y", # handled via mlr3
    "importance", # passed on to blockForest
    "num.threads", # passed on to blockForest
    "seed", # passed on to blockForest
    "verbose" # passed on to blockForest
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict surv.blockforest", {
  learner = LearnerSurvBlockForest$new()
  fun = blockForest:::predict.blockForest
  exclude = c(
    "object", # handled via mlr3
    "data", # handled via mlr3
    "predict.all", # not possible with distr
    "num.trees", # use the default option which is all the trees of the forest
    "type", # use the default option 'response' which returns the distr predict type
    "se.method", # not applicable in survival
    "quantiles" # not supported in mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
