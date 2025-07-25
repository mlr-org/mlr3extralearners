test_that("paramtest surv.flexible train", {
  task = tsk("rats")
  learner = lrn("surv.flexible")
  fun_list = list(flexsurv::flexsurvspline, flexsurv::flexsurvreg, survival::survreg.control)
  exclude = c(
    "data", # handled internally
    "weights", # handle by task
    "subset", # handle by task
    "iter.max", # identical to maxiter
    "formula", # Not implemented by the creator
    "anc", # not implemented by the creator
    "na.action", # not implemented by the creator
    "dist", # not implemented by the creator
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
