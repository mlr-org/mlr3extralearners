test_that("autotest", {
  set.seed(1)
  learner = lrn("surv.cforest", ntree = 50)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, N = 100)
  expect_true(result, info = result$error)
})

test_that("correct prediction types", {
  set.seed(42)
  task = tsk("rats")$filter(sample(1:300, 50))
  part = partition(task, ratio = 0.9)
  unique_times = task$unique_times(part$train)

  learner = lrn("surv.cforest", ntree = 5)
  p = learner$train(task, part$train)$predict(task, part$test)
  expect_matrix(p$data$distr, nrows = length(test_rows),
    max.cols = length(unique_times))
  expect_numeric(p$crank, len = length(test_rows))
})
