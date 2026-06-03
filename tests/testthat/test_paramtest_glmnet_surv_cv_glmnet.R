skip_if_not_installed("mlr3proba")
skip_if_not_installed("glmnet")

test_that("surv.cv_glmnet", {
  learner = lrn("surv.cv_glmnet")
  fun = list(glmnet::cv.glmnet, glmnet::glmnet, glmnet::relax.glmnet, glmnet::glmnet.control)
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "family", # only "cox" is applicable for this learner
    "weights", # handled by mlr3
    "offset", # handled by mlr3
    "fit", # fit object is passed on to relax.glmnet()
    "check.args", # default TRUE is good for mlr3, no need to expose
    "type.gaussian", # not applicable for cox family
    "type.logistic", # not applicable for cox family
    "standardize.response", # not applicable for cox family
    "type.multinomial", # not applicable for cox family
    "control", # individual control params are set directly
    "itrace", # supported via param trace.it
    "factory" # only used in scripts, no effect within mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict surv.cv_glmnet", {
  learner = lrn("surv.cv_glmnet")
  fun = list(
    glmnet:::predict.cv.glmnet,
    glmnet:::predict.cv.relaxed,
    glmnet::predict.glmnet,
    glmnet::predict.relaxed,
    survival::survfit
  )
  exclude = c(
    "object", # handled via mlr3
    "newx", # handled via mlr3
    "type", # handled via mlr3
    "newoffset", # handled by mlr3
    "formula", # handled via mlr3
    "predict.gamma", # renamed from gamma
    "gamma", # renamed to predict.gamma in mlr3 to avoid confusion with train gamma parameter
    "stype", # for distr prediction
    "ctype", # for distr prediction
    "use_pred_offset" # for using the offset during prediction
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
