install_learners("regr.gamboost")

test_that("autotest", {
  learner = LearnerRegrGAMBoost$new()
  learner$param_set$values = list(baselearner = "btree")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.gamboost", {
  learner = lrn("regr.gamboost")
  fun = mboost::gamboost
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

test_that("regr.gamboost_boost_control", {
  learner = lrn("regr.gamboost")
  fun = mboost::boost_control
  exclude = c(
    "center" # deprecated
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
