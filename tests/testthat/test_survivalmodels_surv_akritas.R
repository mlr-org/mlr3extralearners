skip_if_not_installed("survivalmodels")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("surv.akritas", lambda = 0.5)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("time points for prediction", {
  task = tsk("lung")
  learner = lrn("surv.akritas")
  learner$train(task)
  p = learner$predict(task)
  times = as.integer(colnames(p$data$distr))
  expect_equal(times, task$unique_times()) # unique train time points are used

  # use many more time points than the ones in the train set
  learner$param_set$set_values(.values = list(ntime = 9999))
  learner$train(task)
  p = learner$predict(task)
  times = as.integer(colnames(p$data$distr))
  expect_equal(times, task$unique_times()) # all unique train time points are still used

  learner$param_set$set_values(.values = list(ntime = 50))
  learner$train(task)
  p = learner$predict(task)
  times = as.integer(colnames(p$data$distr))
  # min and max times are retained after coersion
  expect_equal(min(times), min(task$unique_times()))
  expect_equal(max(times), max(task$unique_times()))
  expect_equal(length(times), 50)
})
