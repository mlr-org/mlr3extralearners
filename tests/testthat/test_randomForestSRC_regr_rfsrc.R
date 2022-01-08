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


test_that("train regr.rfsrc", {
  learner = lrn("regr.rfsrc")
  fun_list = list(randomForestSRC::rfsrc)
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "ytry", # for unsupervised forests only
    "yvar.wt", # not yet implemented
    "case.wt", # handled by task weights
    "cores", # set as option(rf.cores)
    "sampsize.ratio", # alternative to sampsize
    "mtry.ratio" # alternative to mtry
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})


test_that("predict regr.rfsrc", {
  learner = lrn("regr.rfsrc")
  fun_list = list(randomForestSRC:::predict.rfsrc)
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target", # for multivariate families only
    "cores" # set as option(rf.cores)
  )

  paramtest = run_paramtest(learner, fun_list, exclude, "predict")
  expect_paramtest(paramtest)
})
