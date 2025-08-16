skip_if_not_installed("partykit")
skip_if_not_installed("coin")
skip_if_not_installed("sandwich")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("surv.ctree")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("correct prediction types", {
  withr::local_seed(42)
  task = tsk("rats")$filter(sample(1:300, 50))
  part = partition(task, ratio = 0.9)
  train_rows = part$train
  test_rows = part$test
  unique_times = task$unique_times(train_rows)

  learner = lrn("surv.ctree")
  p = learner$train(task, train_rows)$predict(task, test_rows)
  expect_matrix(p$data$distr, nrows = length(test_rows),
                max.cols = length(unique_times))
  expect_numeric(p$crank, len = length(test_rows))
})
