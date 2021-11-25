install_learners("classif.gamboost")

test_that("autotest", {
  learner = LearnerClassifGAMBoost$new()
  learner$param_set$values = list(baselearner = "btree", family = "Binomial")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.gamboost", {
  learner = lrn("classif.gamboost")
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

test_that("classif.gamboost_boost_control", {
  learner = lrn("classif.gamboost")
  fun = mboost::boost_control
  exclude = c(
    "center" # deprecated
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
