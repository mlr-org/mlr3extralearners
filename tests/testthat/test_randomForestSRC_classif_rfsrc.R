skip_if_not_installed("randomForestSRC")
test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("classif.rfsrc", ntree = 20, importance = "random", na.action = "na.impute")
  expect_learner(learner)
  # remove property as prediction doesn't work due to rsfrc bug
  learner$properties = setdiff(learner$properties, "selected_features")

  result = run_autotest(learner, exclude = "uf8_feature_names")
  expect_true(result, info = result$error)
})

test_that("importance/selected", {
  task = tsk("iris")
  learner = lrn("classif.rfsrc", ntree = 20)
  learner$train(task)

  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set parameter 'var.used'")

  # when selected_features() works, prediction fails
  learner$param_set$set_values(var.used = "all.trees")
  learner$train(task)
  expect_character(learner$selected_features())
  expect_error(learner$predict(task), "Prediction is not supported")
})

test_that("convert_ratio", {
  task = tsk("sonar")
  learner = lrn("classif.rfsrc", ntree = 5, mtry.ratio = .5)
  capture.output({
    expect_equal(learner$train(task)$model$mtry, 30)
  })

  learner$param_set$values$mtry.ratio = 0
  capture.output({
    expect_equal(learner$train(task)$model$mtry, 1)
  })

  learner$param_set$values$mtry.ratio = 1
  capture.output({
    expect_equal(learner$train(task)$model$mtry, 60)
  })

  learner$param_set$values$mtry = 10
  expect_error(learner$train(task), "exclusive")

  learner$param_set$values$mtry.ratio = NULL
  capture.output({
    expect_equal(learner$train(task)$model$mtry, 10)
  })
})
