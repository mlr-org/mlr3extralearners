task = tsk("lung")
task = mlr3pipelines::po("encode")$train(list(task))[[1]]$filter(1:100)

test_that("autotest", {
  skip_on_cran()
  with_seed(1, {
    learner = lrn("surv.xgboost")
    expect_learner(learner)
    result = run_autotest(learner, N = 10, check_replicable = FALSE)
    expect_true(result, info = result$error)
  })
})

test_that("manual aft", {
  skip_on_cran()
  set.seed(2)
  learner = lrn("surv.xgboost", objective = "survival:aft")
  task = generate_tasks(learner, 30)$sanity
  p = learner$train(task)$predict(task)
  expect_true(inherits(p, "PredictionSurv"))
  expect_true(p$score() >= 0.5)

  # try with AFT-specific xgboost
  aft = lrn("surv.xgboost.aft")
  p = learner$train(task)$predict(task)
  expect_true(inherits(p, "PredictionSurv"))
  expect_true(p$score() >= 0.5)
})

test_that("early stopping on the test set works", {
  split = partition(task, ratio = 0.8)
  task$set_row_roles(split$test, "test")
  learner = lrn("surv.xgboost.cox",
    nrounds = 20,
    early_stopping_rounds = 5,
    early_stopping_set = "test"
  )

  learner$train(task)
  expect_named(learner$model$evaluation_log, c("iter", "train_cox_nloglik",
    "test_cox_nloglik"))
})

test_that("two types of xgboost models can be initialized", {
  cox = lrn("surv.xgboost.cox", nrounds = 3)
  expect_equal(cox$param_set$values$objective, "survival:cox")
  expect_equal(cox$param_set$values$eval_metric, "cox-nloglik")
  expect_equal(cox$predict_types, c("crank", "distr", "lp"))

  aft = lrn("surv.xgboost.aft", nrounds = 3)
  expect_equal(aft$param_set$values$objective, "survival:aft")
  expect_equal(aft$param_set$values$eval_metric, "aft-nloglik")
  expect_equal(aft$predict_types, c("crank", "lp", "response"))

  # can't change objective
  expect_error(lrn("surv.xgboost.aft", objective = "survival:cox"))
  expect_error(lrn("surv.xgboost.cox", objective = "survival:aft"))

  # predictions are the same no matter how you specify the objective
  xgb_cox = lrn("surv.xgboost", objective = "survival:cox", nrounds = 3)
  xgb_aft = lrn("surv.xgboost", objective = "survival:aft", nrounds = 3)

  p1 = cox$train(task)$predict(task, row_ids = 1:10)
  p2 = xgb_cox$train(task)$predict(task, row_ids = 1:10)
  expect_equal(p1, p2)

  p3 = aft$train(task)$predict(task, row_ids = 1:10)
  p4 = xgb_aft$train(task)$predict(task, row_ids = 1:10)
  expect_equal(p3$crank, p4$crank)
  expect_equal(p3$lp, p4$lp)
  expect_true(all(p3$response > 0)) # predicted mean times
  expect_true(all(is.na(p4$response))) # no responses
})
