remotes::install_github("binderh/CoxBoost")
install.packages(c("mlr3proba", "pracma"), repos = "https://cloud.r-project.org")
load_tests("surv.coxboost")

test_that("autotest", {
  learner = LearnerSurvCoxboost$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("paramtest: train", {
  learner = lrn("surv.coxboost")
  fun = CoxBoost::CoxBoost
  exclude = c("time", # coerced internally
              "status", # coerced internally
              "x", # coerced internally
              "subset", # handled by task
              "weights", # handled by task
              "stratum", # not currently supported
              "cmprsk", # not currently supported
              "coupled.strata" # not currently supported
              )

              ParamTest = run_paramtest(learner, fun, exclude)
              expect_true(ParamTest, info = paste0(
                "\nMissing parameters:\n",
                paste0("- '", ParamTest$missing, "'", collapse = "\n")
              ))
})

test_that("paramtest: predict", {
  learner = lrn("surv.coxboost")
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
