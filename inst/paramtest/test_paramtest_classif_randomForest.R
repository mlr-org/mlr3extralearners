library(mlr3extralearners)
install_learners("classif.randomforest")

test_that("classif.randomforest", {
  learner = lrn("classif.randomForest")
  fun = randomForest::randomForest
  exclude = c(
    "x" # handled via mlr3
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("predict classif.randomForest", {
  learner = lrn("classif.randomForest")
  fun = randomForest:::predict.randomForest
  exclude = c(
    "object", # handled via mlr3
    "newdata", # handled via mlr3
    "type" # handled via mlr3
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
