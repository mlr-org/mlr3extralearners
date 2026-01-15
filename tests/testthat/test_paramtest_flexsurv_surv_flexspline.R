skip_if_not_installed("mlr3proba")
skip_if_not_installed("survival")
skip_if_not_installed("flexsurv")

test_that("paramtest surv.flexspline train", {
  learner = lrn("surv.flexspline")
  fun_list = list(flexsurv::flexsurvspline, flexsurv::flexsurvreg, survival::survreg.control)
  exclude = c(
    "data", # handled internally
    "weights", # handle by task
    "subset", # handle by task
    "iter.max", # identical to maxiter
    "na.action", # not implemented by the creator
    "dist", # handled by flexsurvreg
    "dfns", # not implemented by the creator
    "aux", # not implemented by the creator
    "integ.opts", # not implemented by the creator
    "sr.control", # not implemented by the creator
    "hessian", # not implemented by the creator
    "hess.control" # not implemented by the creator
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.flexspline predict", {
  learner = lrn("surv.flexspline")
  fun_list = list(flexsurv:::predict.flexsurvreg)
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "formula", # needed for lp prediction
    "type", # handled internally
    "start", # not supported
    "conf.int", # not needed
    "conf.level", # not needed
    "se.fit", # not needed
    "p" # not supported
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})