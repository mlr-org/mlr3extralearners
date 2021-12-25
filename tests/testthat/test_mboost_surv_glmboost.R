install_learners("surv.glmboost")
load_tests("surv.glmboost")

test_that("autotest ph", {
  learner = lrn("surv.glmboost", family = "coxph")
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest aft", {
  learner = lrn("surv.glmboost", family = "weibull")
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("surv.glmboost", {
  learner = lrn("surv.glmboost")
  fun_list = list(mboost:::glmboost.formula, mboost::boost_control)
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "custom.family", # Pass custom families as other families are parametrized as characters
    "nuirange", # e.g. mboost::Weibbull
    "sigma", # e.g. mboost::Cindex
    "ipcw" # e.g. mboost::Cindex
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

