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

test_that("surv.mboost", {
  learner = lrn("surv.mboost")
  fun = mboost::mboost
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "..." # not used
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.mboost_boost_control", {
  learner = lrn("surv.mboost")
  fun = mboost::boost_control
  exclude = c(
    "center" # deprecated
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
