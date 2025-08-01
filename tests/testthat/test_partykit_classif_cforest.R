test_that("autotest", {
  learner = lrn("classif.cforest", ntree = 30L)
  expect_learner(learner)
  result = with_seed(1, run_autotest(learner))
  expect_true(result, info = result$error)
})

test_that("parameter setting works", {
  learner = lrn("classif.cforest")
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
