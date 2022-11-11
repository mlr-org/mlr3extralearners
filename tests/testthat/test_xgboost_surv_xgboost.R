test_that("autotest", {
  skip_on_cran()
  with_seed(1, {
    learner = mlr_learners$get("surv.xgboost")
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
})

test_that("early stopping on the test set works", {
  task = tsk("lung")
  task = mlr3pipelines::po("encode")$train(list(task))[[1]]

  split = partition(task, ratio = 0.8)
  task$set_row_roles(split$test, "test")
  learner = lrn("surv.xgboost",
    nrounds = 20,
    early_stopping_rounds = 5,
    early_stopping_set = "test"
  )

  learner$train(task)
  expect_named(learner$model$evaluation_log, c("iter", "train_cox_nloglik",
    "test_cox_nloglik"))
})
