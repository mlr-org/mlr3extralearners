remotes::install_github("binderh/CoxBoost")
install.packages(c("mlr3proba", "pracma"), repos = "https://cloud.r-project.org")
load_tests("surv.coxboost")

test_that("autotest", {
  learner = LearnerSurvCoxboost$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("Paramtest", {
  learner = lrn("surv.coxboost")
  fun_list = list(CoxBoost::CoxBoost, CoxBoost:::predict.CoxBoost)
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
              "type") # handled internally
  param_test = run_paramtest(learner, fun_list, exclude)
  expect_true(param_test)
})

