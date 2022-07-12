test_that("autotest", {
  learner = LearnerClassifCForest$new()
  learner$param_set$values = list(ntree = 30L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("parameter setting works", {
  learner = LearnerClassifCForest$new()
  learner$param_set$values$ntree = 3
  learner$param_set$values$replace = TRUE
  learner$param_set$values$fraction = 0.7
  learner$param_set$values$teststat = "maximum"
  learner$param_set$values$OOB = TRUE
  task = tsk("iris")
  learner$train(task)
  expect_equal(length(learner$model$nodes), 3L)
  expect_equal(learner$model$info$control$teststat, "maximum")
})
