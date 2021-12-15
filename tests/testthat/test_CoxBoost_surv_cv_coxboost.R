remotes::install_github("binderh/CoxBoost")
install.packages(c("mlr3proba", "pracma"), repos = "https://cloud.r-project.org")
load_tests("surv.cv_coxboost")

test_that("autotest", {
  set.seed(1)
  learner = lrn("surv.cv_coxboost", maxstepno = 1, K = 2)
  expect_learner(learner)
  result = run_autotest(learner, N = 10, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("optim", {
  set.seed(1)
  learner = lrn("surv.cv_coxboost",
    penalty = "optimCoxBoostPenalty",
    maxstepno = 1, minstepno = 0, iter.max = 1, K = 2)
  task = tsk("rats")
  task$select(c("litter", "rx"))
  expect_prediction_surv(
    suppressWarnings(learner$train(task, row_ids = 1:50)$predict(task, row_ids = 51:100))
    )
})

test_that("surv.cv_coxboost", {
  learner = lrn("surv.cv_coxboost")
  fun_list = list(CoxBoost::cv.CoxBoost, CoxBoost::optimCoxBoostPenalty, CoxBoost::CoxBoost,
                  CoxBoost:::predict.CoxBoost)
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
              "stepno", # optimised in cv.CoxBoost
              "object", # handled by mlr3
              "times", # all times returned
              "newdata", # handled by task
              "newtime", # handled by newdata
              "newstatus" # handled by newdata
              )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
