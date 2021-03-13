library(mlr3extralearners)
install.packages(c("mlr3proba", "pracma"))
remotes::install_github("binderh/CoxBoost")

test_that("surv.cv_coxboost", {
  learner = lrn("surv.cv_coxboost")
  fun = CoxBoost::cv.CoxBoost
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
              "multicore" # handled by future
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")
  ))
})

# example for checking a "control" function of a learner
test_that("surv.cv_coxboost_optimCoxBoostPenalty", {
  learner = lrn("surv.cv_coxboost")
  fun = CoxBoost::optimCoxBoostPenalty # replace!
  exclude = c("time", # coerced internally
              "status", # coerced internally
              "x", # coerced internally
              "parallel" # handled by future
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")
  ))
})

test_that("surv.cv_coxboost_CoxBoost", {
  learner = lrn("surv.cv_coxboost")
  fun = CoxBoost::CoxBoost # replace!
  exclude = c("time", # coerced internally
              "status", # coerced internally
              "x", # coerced internally
              "parallel", # handled by future
              "subset", # handled by task
              "weights", # handled by task
              "stratum", # not currently supported
              "cmprsk", # not currently supported
              "coupled.strata", # not currently supported
              "stepno" # optimised in cv.CoxBoost
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")
  ))
})

test_that("surv.cv_coxboost_predict", {
  learner = lrn("surv.cv_coxboost")
  fun = CoxBoost:::predict.CoxBoost
  exclude = c("object", # handled by self$model
              "newdata", # handled by task
              "newtime", # handled by newdata
              "newstatus", # handled by newdata
              "subset", # handled by task,
              "times", # all times returned
              "weights", # handled by task
              "stratum", # not currently supported
              "type" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")
  ))
})
