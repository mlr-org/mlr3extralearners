test_that("paramtest surv.cv_coxboost train", {
  learner = lrn("surv.cv_coxboost")
  fun_list = list(CoxBoost::cv.CoxBoost, CoxBoost::optimCoxBoostPenalty, CoxBoost::CoxBoost)
  exclude = c("time",
    # coerced internally
    "status",
    # coerced internally
    "x",
    # coerced internally
    "subset",
    # handled by task
    "weights", # handled by task
    "stratum", # not currently supported
    "cmprsk", # not currently supported
    "coupled.strata", # not currently supported
    "parallel",
    # handled by future
    "upload.x",
    # handled by future
    "multicore", # handled by future
    "parallel", # coerced internally
    "stepno" # optimised in cv.CoxBoost
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.cv_coxboost predict", {
  learner = lrn("surv.cv_coxboost")
  fun_list = list(CoxBoost:::predict.CoxBoost) # nolint
  exclude = c("time",
    "object", # handled by mlr3
    "newdata", # handled by task
    "newtime", # handled by newdata
    "newstatus", # handled by newdata
    "type",
    "subset",
    "weights",
    "stratum",
    "times"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
