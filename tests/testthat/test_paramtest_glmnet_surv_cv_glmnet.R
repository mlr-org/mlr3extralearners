skip_if_not_installed("mlr3proba")
skip_if_not_installed("glmnet")

test_that("surv.cv_glmnet", {
  learner = lrn("surv.cv_glmnet")
  fun = list(glmnet::cv.glmnet, glmnet::glmnet.control, glmnet::glmnet)
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "weights", # handled by mlr3
    "itrace", # supported via param trace.it
    "factory", # only used in scripts, no effect within mlr3
    "family", # handled by mlr3
    "offset" # handled by mlr3
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
    "predict.gamma", # renamed from gamma
    "offset", # for distr prediction
    "newoffset", # handled by mlr3
    "stype", # for distr prediction
    "ctype", # for distr prediction
    "use_pred_offset" # for using the offset during prediction
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
