install_learners("classif.rfsrc")


test_that("importance/selected", {
  set.seed(1)
  task = tsk("iris")
  learner = lrn("classif.rfsrc")
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set 'var.used'")
})

test_that("autotest", {
  learner = lrn("classif.rfsrc")
  learner$param_set$values = list(
    importance = "random", na.action = "na.impute",
    do.trace = TRUE)
  expect_learner(learner)
  set.seed(1)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("convert_ratio", {
  task = tsk("sonar")
  learner = lrn("classif.rfsrc", ntree = 5, mtry.ratio = .5)
  expect_equal(learner$train(task)$model$mtry, 30)

  learner$param_set$values$mtry.ratio = 0
  expect_equal(learner$train(task)$model$mtry, 1)

  learner$param_set$values$mtry.ratio = 1
  expect_equal(learner$train(task)$model$mtry, 60)

  learner$param_set$values$mtry = 10
  expect_error(learner$train(task), "exclusive")

  learner$param_set$values$mtry.ratio = NULL
  expect_equal(learner$train(task)$model$mtry, 10)
})

test_that("train classif.rfsrc", {
  learner = lrn("classif.rfsrc")
  fun_list = list(randomForestSRC::rfsrc)
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "ytry", # for unsupervised forests only
    "yvar.wt", # not yet implemented
    "case.wt", # handled by task weights
    "mtry.ratio",
    "sampsize.ratio",
    "cores" # is set as option(rf.cores)
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})


test_that("predict classif.rfsrc", {
  learner = lrn("classif.rfsrc")
  fun_list = list(randomForestSRC:::predict.rfsrc)
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target", # all classes returned
    "cores" # is set as option(rf.cores)
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
