test_that("surv.glmnet", {
  learner = lrn("surv.glmnet")
  fun = list(glmnet::glmnet, glmnet::cv.glmnet, glmnet::glmnet.control)
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "weights", # handled by mlr3
    "nfolds", # not used by learner
    "foldid", # not used by learner
    "family", # only coxnet available
    "type.gaussian", # not used by learner
    "type.measure", # only used by cv.glmnet
    "standardize.response", # for 'mgaussian' only
    "itrace", # supported via param trace.it
    "factory" # only used in scripts, no effect within mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict surv.glmnet", {
  learner = lrn("surv.glmnet")
  fun = glmnet::predict.glmnet
  exclude = c(
    "object", # handled via mlr3
    "newx", # handled via mlr3
    "type", # handled via mlr3
    "predict.gamma" # renamed from gamma
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
