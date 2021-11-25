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

test_that("classif.rfsrc_train", {
  learner = lrn("classif.rfsrc")
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


test_that("classif.rfsrc_predict", {
  learner = lrn("classif.rfsrc")
  fun = randomForestSRC:::predict.rfsrc
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target" # all classes returned
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
