test_that("surv.ranger", {
  learner = LearnerSurvRanger$new()
  fun = ranger::ranger
  exclude = c(
    "formula", # handled via mlr3
    "y", # handled via mlr3
    "x", # handled via mlr3
    "data", # handled via mlr3
    "probability", # handled via mlr3
    "case.weights", # handled via mlr3
    "local.importance", # handled via importance() method
    "class.weights", # handled via mlr3
    "inbag", # handled via mlr3 stratification
    "dependent.variable.name", # handled via mlr3
    "status.variable.name", # handled via mlr3
    "classification", # handled via mlr3
    "quantreg", # regression only
    "mtry.ratio" # custom hyperpar
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict surv.ranger", {
  learner = LearnerSurvRanger$new()
  fun = ranger:::predict.ranger # nolint
  exclude = c(
    "quantiles", # required type not supported in mlr3
    "what", # required type (quantiles) not supported in mlr3
    "formula", # handled via mlr3
    "object", # handled via mlr3
    "data", # handled via mlr3
    "type", # handled via mlr3
    "predict.all", # not possible with distr
    "se.method" # not possible with distr
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
