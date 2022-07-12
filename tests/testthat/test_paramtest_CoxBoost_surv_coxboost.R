test_that("paramtest surv.coxboost train", {
  learner = lrn("surv.coxboost")
  fun_list = list(CoxBoost::CoxBoost)
  exclude = c("time", # coerced internally
    "status", # coerced internally
    "x", # coerced internally
    "subset", # handled by task
    "weights", # handled by task
    "stratum", # not currently supported
    "cmprsk", # not currently supported
    "coupled.strata", # not currently supported
    "object", # handled by self$model
    "newdata", # handled by task
    "newtime", # handled by newdata
    "newstatus", # handled by newdata
    "times", # all times returned
    "type"
  ) # handled internally
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.coxboost predict", {
  learner = lrn("surv.coxboost")
  fun_list = list(CoxBoost:::predict.CoxBoost) # nolint
  exclude = c(
    "object", # mlr3
    "newdata", # mlr3
    # not implemented by author
    "newtime",
    "newstatus",
    "subset", # mlr3
    "weights", # mlr3
    "stratum", # mlr3
    "times",
    "type" # mlr3
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
