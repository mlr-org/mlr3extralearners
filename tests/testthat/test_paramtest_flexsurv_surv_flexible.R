skip_if_not_installed("mlr3proba")
skip_if_not_installed("survival")
skip_if_not_installed("flexsurv")

test_that("paramtest surv.flexible train", {
  task = tsk("rats")
  learner = lrn("surv.flexible")
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

# no predict time parameters
