library(mlr3extralearners)
mlr3extralearners::install_learners("classif.glmboost")

test_that("classif.glmboost", {
  learner = lrn("classif.glmboost")
  fun = mboost:::glmboost.formula
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

test_that("classif.glmboost_boost_control", {
  learner = lrn("classif.glmboost")
  fun = mboost::boost_control
  exclude = c(
    "center" # deprecated
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
