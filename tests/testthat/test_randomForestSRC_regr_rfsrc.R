install_learners("regr.rfsrc")

test_that("importance/selected", {
  set.seed(1)
  task = tsk("boston_housing")
  learner = lrn("regr.rfsrc")
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set 'var.used'")
})

test_that("autotest", {
  learner = lrn("regr.rfsrc")
  learner$param_set$values = list(
    importance = "random", na.action = "na.impute",
    do.trace = TRUE)
  expect_learner(learner)
  set.seed(1)
  result = run_autotest(learner, exclude = "single")
  expect_true(result, info = result$error)
})


test_that("regr.rfsrc_train", {
  learner = lrn("regr.rfsrc")
  fun = randomForestSRC::rfsrc
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "ytry", # for unsupervised forests only
    "yvar.wt", # not yet implemented
    "case.wt" # handled by task weights
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})


test_that("regr.rfsrc_predict", {
  learner = lrn("regr.rfsrc")
  fun = randomForestSRC:::predict.rfsrc
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target" # for multivariate families only
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
