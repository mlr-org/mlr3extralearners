library(mlr3extralearners)
mlr3extralearners::install_learners("regr.randomForest")

test_that("regr.randomforest", {
  learner = lrn("regr.randomForest")
  fun = randomForest::randomForest
  exclude = c(
    "x" # handled via mlr3
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("predict regr.randomForest", {
  learner = lrn("regr.randomForest")
  fun = randomForest:::predict.randomForest
  exclude = c(
    "object", # handled via mlr3
    "newdata", # handled via mlr3
    "type", # handled via mlr3
    "cutoff" # classification only
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
