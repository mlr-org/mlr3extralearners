test_that("surv.cv_glmnet", {
  learner = lrn("surv.cv_glmnet")
  fun = list(glmnet::cv.glmnet, glmnet::glmnet.control, glmnet::glmnet)
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "weights", # handled by mlr3
    "itrace", # supported via param trace.it
    "factory", # only used in scripts, no effect within mlr3
    "family" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict surv.cv_glmnet", {
  learner = lrn("surv.cv_glmnet")
  fun = glmnet:::predict.cv.glmnet # nolint
  exclude = c(
    "object", # handled via mlr3
    "newx", # handled via mlr3
    "predict.gamma" # renamed from gamma
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
