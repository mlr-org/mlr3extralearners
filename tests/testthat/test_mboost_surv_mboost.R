install_learners("surv.mboost")
load_tests("surv.mboost")

test_that("autotest ph", {
  learner = lrn("surv.mboost", baselearner = "bols", family = "coxph", center = TRUE)
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest aft", {
  learner = lrn("surv.mboost", family = "loglog", baselearner = "bols", center = TRUE)
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights", check_replicable = FALSE)
  expect_true(result, info = result$error)
})


test_that("surv.mboost_boost_control", {
  learner = lrn("surv.mboost")
  fun_list = list(mboost::boost_control, mboost::mboost, mboost::Weibull, mboost::Loglog,
    mboost::Lognormal, mboost::Gehan, mboost::Cindex)
  exclude = c(
    "center", # deprecated
    "formula", # mlr3
    "data", # mlr3
    "weights", # task
    "control", # mlr3
    "custom.family" # mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
