test_that("autotest", {
  set.seed(1)
  learner = lrn("classif.lightgbm", nrounds = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("manual validation binary", {
  learner = lrn("classif.lightgbm", early_stopping_rounds = 1, early_stopping_split = 0.2)
  task = tsk("sonar")
  expect_error(learner$train(task), regexp = NA)
  # TODO: Fix with test validation renaming
  task$row_roles$holdout = sample(seq(task$nrow), task$nrow * 0.3)
  expect_true(inherits(learner$train(task)$predict(task), "PredictionClassif"))
})

test_that("manual validation multiclass", {
  learner = lrn("classif.lightgbm", early_stopping_rounds = 1, early_stopping_split = 0.3)
  task = tsk("iris")
  expect_error(learner$train(task), regexp = NA)
  # TODO: Fix with test validation renaming
  task$row_roles$holdout = sample(seq(task$nrow), task$nrow * 0.3)
  expect_true(inherits(learner$train(task)$predict(task), "PredictionClassif"))
})


test_that("Can pass parameters", {
  task = tsk("iris")
  learner = lrn("classif.lightgbm", nrounds = 5L, max_bin = 10L)
  expect_warning(learner$train(task), regexp = NA)
})
