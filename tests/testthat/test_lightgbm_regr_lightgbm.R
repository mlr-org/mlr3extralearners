test_that("autotest", {
  set.seed(1)
  learner = lrn("regr.lightgbm", nrounds = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("manual validation", {
  learner = lrn("regr.lightgbm", early_stopping_rounds = 1, early_stopping_split = 0.1)
  task = tsk("mtcars")
  learner$train(task)
  expect_error(learner$train(task), regex = NA)
})

test_that("Can pass parameters", {
  task = tsk("iris")
  learner = lrn("classif.lightgbm", nrounds = 5L, max_bin = 10L)
  expect_warning(learner$train(task), regexp = NA)
})
