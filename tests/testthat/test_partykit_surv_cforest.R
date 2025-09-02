skip_if_not_installed("partykit")
skip_if_not_installed("sandwich")
skip_if_not_installed("coin")

test_that("autotest", {
  learner = lrn("surv.cforest", ntree = 5)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("correct prediction types", {
  withr::local_seed(42)
  task = tsk("rats")$filter(sample(1:300, 50))
  part = partition(task, ratio = 0.9)
  train_rows = part$train
  test_rows = part$test
  unique_times = task$unique_times(train_rows)

  learner = lrn("surv.cforest", ntree = 5)
  p = learner$train(task, part$train)$predict(task, test_rows)
  expect_matrix(p$data$distr, nrows = length(test_rows),
                max.cols = length(unique_times))
  expect_numeric(p$crank, len = length(test_rows))
})
