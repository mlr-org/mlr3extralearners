install_learners("surv.rfsrc")
load_tests("surv.rfsrc")

test_that("autotest", {
  learner = lrn("surv.rfsrc")
  learner$param_set$values = insert_named(
    learner$param_set$values,
    list(importance = "random", na.action = "na.impute"))
  expect_learner(learner)
  set.seed(1)
  result = run_autotest(learner, check_replicable = FALSE, N = 100)
  expect_true(result, info = result$error)
})

test_that("importance/selected", {
  set.seed(1)
  task = tsk("rats")
  learn = LearnerSurvRandomForestSRC$new()
  learn$param_set$values = list(estimator = "kaplan")
  learn$train(task)
  expect_error(learn$importance(), "Set 'importance'")
  expect_error(learn$selected_features(), "Set 'var.used'")
  learn$param_set$values = list(estimator = "nelson", var.used = "all.trees", importance = "random")
  learn$train(task)
  expect_silent(learn$selected_features())
  expect_silent(learn$importance())
  expect_silent(learn$oob_error())
})

test_that("surv.rfsrc_train", {
  learner = lrn("surv.rfsrc")
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


test_that("surv.rfsrc_predict", {
  learner = lrn("surv.rfsrc")
  fun_list = list(randomForestSRC:::predict.rfsrc)
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target", # for multivariate families only
    "cores", # set as option(rf.cores)
    "estimator" # additionaly implemented by author
  )

  paramtest = run_paramtest(learner, fun_list, exclude, "predict")
  expect_paramtest(paramtest)
})
