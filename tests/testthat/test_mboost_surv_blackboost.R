test_that("autotest aft", {
  skip_on_cran()
  set.seed(1)
  learner = lrn("surv.blackboost", family = "loglog")
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, N = 50, exclude = "weights|utf8_feature_names", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest ph", {
  skip_on_cran()
  set.seed(1)
  learner = lrn("surv.blackboost")
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, N = 50, exclude = "weights|utf8_feature_names", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("ctrlpars", {
  skip_on_cran()
  set.seed(1)
  task = tsk("rats")
  learner = lrn("surv.blackboost", mstop = 99, maxpts = 24000, abseps = 0.1)
  p = learner$train(task, row_ids = 1:50)$predict(task, row_ids = 51:100)
  expect_true(inherits(p, "PredictionSurv"))
})
