skip_if_not_installed("mlr3cmprsk")
skip_if_not_installed("CoxBoost")

test_that("paramtest cmprsk.coxboost train", {
  learner = lrn("cmprsk.coxboost")
  fun_list = list(CoxBoost::CoxBoost, CoxBoost::cv.CoxBoost, CoxBoost::optimCoxBoostPenalty)
  exclude = c(
    "time", # used internally
    "status", # used internally
    "x", # used internally
    "subset", # handled by task
    "weights", # handled by task
    "stratum", # not currently supported
    "parallel", # not currently supported
    "upload.x", # not currently supported
    "multicore", # not currently supported
    "cv" # mlr3-specific to choose between CoxBoost and cv.CoxBoost/optimCoxBoostPenalty for training
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest cmprsk.coxboost predict", {
  learner = lrn("cmprsk.coxboost")
  fun_list = list(CoxBoost:::predict.CoxBoost) # nolint
  exclude = c(
    "object", # used internally
    "newdata", # used internally
    "newtime", # only required for type="logplik"
    "newstatus", # only required for type="logplik"
    "subset", # handled by task
    "weights", # handled by task
    "stratum", # not currently supported
    "type" # mlr3-specific (type = "CIF" always)
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
