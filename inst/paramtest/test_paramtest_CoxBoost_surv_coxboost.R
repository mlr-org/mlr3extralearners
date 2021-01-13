skip("Temporarily archived.")

library(mlr3extralearners)
install_learners("surv.coxboost")

test_that("surv.coxboost", {
  learner = lrn("surv.coxboost")
  fun = CoxBoost::CoxBoost
  exclude = c("time", # coerced internally
              "status", # coerced internally
              "x", # coerced internally
              "subset", # handled by task
              "weights" # handled by task
              )

              ParamTest = run_paramtest(learner, fun, exclude)
              expect_true(ParamTest, info = paste0(
                "\nMissing parameters:\n",
                paste0("- '", ParamTest$missing, "'", collapse = "\n")
              ))
})

test_that("surv.coxboost_predict", {
  learner = lrn("surv.coxboost")
  fun = CoxBoost:::predict.CoxBoost
  exclude = c("object", # handled by self$model
              "newdata", # handled by task
              "newtime", # handled by newdata
              "newstatus", # handled by newdata
              "subset", # handled by task,
              "times", # all times returned
              "type" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")
  ))
})
