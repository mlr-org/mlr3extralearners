task = tsk("lung")
task = mlr3pipelines::po("encode")$train(list(task))[[1]]$filter(1:100) # encode sex factor

test_that("autotest", {
  skip_on_cran()
  with_seed(1, {
    learner = suppressWarnings(lrn("surv.xgboost"))
    expect_learner(learner)
    result = run_autotest(learner, N = 10, check_replicable = FALSE)
    expect_true(result, info = result$error)
  })
})

test_that("manual aft", {
  skip_on_cran()
  set.seed(2)
  learner = suppressWarnings(lrn("surv.xgboost", objective = "survival:aft"))
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

test_that("validation and internal tuning: aft", {
  learner = lrn("surv.xgboost.aft",
    nrounds = 10,
    early_stopping_rounds = 10,
    validate = 0.2
  )

  learner$train(task)
  expect_named(learner$model$evaluation_log, c("iter", "test_aft_nloglik"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "aft_nloglik")
  expect_equal(
    learner$internal_valid_scores$aft_nloglik,
    learner$model$evaluation[get("iter") == 10, "test_aft_nloglik"][[1L]]
  )

  expect_list(learner$internal_tuned_values, types = "integerish")
  expect_equal(names(learner$internal_tuned_values), "nrounds")

  learner$validate = NULL
  expect_error(learner$train(task), "field 'validate'")

  learner$validate = 0.2
  task$internal_valid_task = NULL
  learner$param_set$set_values(
    early_stopping_rounds = NULL
  )
  learner$train(task)
  expect_equal(learner$internal_tuned_values, NULL)
  expect_named(learner$model$evaluation_log, c("iter", "test_aft_nloglik"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "aft_nloglik")

  learner = lrn("surv.xgboost.aft",
    nrounds = to_tune(upper = 1000, internal = TRUE),
    validate = 0.2,
    metric = "aft_nloglik"
  )
  s = learner$param_set$search_space()
  expect_error(learner$param_set$convert_internal_search_space(s), "Parameter")
  learner$param_set$set_values(early_stopping_rounds = 10)
  learner$param_set$disable_internal_tuning("nrounds")
  expect_equal(learner$param_set$values$early_stopping_rounds, NULL)

  learner = lrn("surv.xgboost.aft",
    nrounds = 100L,
    early_stopping_rounds = 5,
    validate = 0.2
  )
  learner$train(task)
  expect_equal(
    learner$internal_valid_scores$aft_nloglik,
    learner$model$evaluation_log$test_aft_nloglik[learner$internal_tuned_values$nrounds]
  )

  learner = lrn("surv.xgboost.aft")
  learner$train(task)
  expect_true(is.null(learner$internal_valid_scores))
  expect_true(is.null(learner$internal_tuned_values))

  learner = lrn("surv.xgboost.aft", validate = 0.3, nrounds = 10)
  learner$train(task)
  expect_equal(learner$internal_valid_scores$aft_nloglik, learner$model$evaluation_log$test_aft_nloglik[10L])
  expect_true(is.null(learner$internal_tuned_values))
})

test_that("validation and internal tuning: cox", {
  learner = lrn("surv.xgboost.cox",
    nrounds = 10,
    early_stopping_rounds = 10,
    validate = 0.2,
    eval_metric = "cox_nloglik"
  )

  learner$train(task)
  expect_named(learner$model$model$evaluation_log, c("iter", "test_cox_nloglik"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "cox_nloglik")
  expect_equal(
    learner$internal_valid_scores$cox_nloglik,
    learner$model$model$evaluation[get("iter") == 10, "test_cox_nloglik"][[1L]]
  )

  expect_list(learner$internal_tuned_values, types = "integerish")
  expect_equal(names(learner$internal_tuned_values), "nrounds")

  learner$validate = NULL
  expect_error(learner$train(task), "field 'validate'")

  learner$validate = 0.2
  task$internal_valid_task = NULL
  learner$param_set$set_values(
    early_stopping_rounds = NULL
  )
  learner$train(task)
  expect_equal(learner$internal_tuned_values, NULL)
  expect_named(learner$model$model$evaluation_log, c("iter", "test_cox_nloglik"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "cox_nloglik")

  learner = lrn("surv.xgboost.cox",
    nrounds = to_tune(upper = 1000, internal = TRUE),
    validate = 0.2
  )
  s = learner$param_set$search_space()
  expect_error(learner$param_set$convert_internal_search_space(s), "Parameter")
  learner$param_set$set_values(early_stopping_rounds = 10)
  learner$param_set$disable_internal_tuning("nrounds")
  expect_equal(learner$param_set$values$early_stopping_rounds, NULL)

  learner = lrn("surv.xgboost.cox",
    nrounds = 100L,
    early_stopping_rounds = 5,
    validate = 0.2
  )
  learner$train(task)
  expect_equal(
    learner$internal_valid_scores$cox_nloglik,
    learner$model$model$evaluation_log$test_cox_nloglik[learner$internal_tuned_values$nrounds]
  )

  learner = lrn("surv.xgboost.cox")
  learner$train(task)
  expect_true(is.null(learner$internal_valid_scores))
  expect_true(is.null(learner$internal_tuned_values))

  learner = lrn("surv.xgboost.cox", validate = 0.3, nrounds = 10)
  learner$train(task)
  expect_equal(learner$internal_valid_scores$cox_nloglik, learner$model$model$evaluation_log$test_cox_nloglik[10L])
  expect_true(is.null(learner$internal_tuned_values))
})

test_that("two types of xgboost models can be initialized", {
  cox = lrn("surv.xgboost.cox", nrounds = 3)
  expect_null(cox$param_set$values$objective)
  expect_null(cox$param_set$values$eval_metric)
  expect_equal(cox$predict_types, c("crank", "distr", "lp"))

  aft = lrn("surv.xgboost.aft", nrounds = 3)
  expect_null(aft$param_set$values$objective)
  expect_null(aft$param_set$values$eval_metric)
  expect_equal(aft$predict_types, c("crank", "lp", "response"))

  # can't set objective
  expect_error(lrn("surv.xgboost.aft", objective = "survival:cox"))
  expect_error(lrn("surv.xgboost.aft", objective = "survival:aft"))
  expect_error(lrn("surv.xgboost.cox", objective = "survival:aft"))
  expect_error(lrn("surv.xgboost.cox", objective = "survival:cox"))

  # check predictions types
  xgb_cox = suppressWarnings(lrn("surv.xgboost", objective = "survival:cox", nrounds = 3))
  xgb_aft = suppressWarnings(lrn("surv.xgboost", objective = "survival:aft", nrounds = 3))

  p1 = cox$train(task)$predict(task, row_ids = 1:10)
  p2 = xgb_cox$train(task)$predict(task, row_ids = 1:10)
  expect_equal(xgb_cox$importance(), cox$importance())
  expect_equal(p1$crank, p2$crank)
  expect_equal(p1$lp, p2$lp)
  expect_class(p1$distr, "Matdist") # we get distr predictions
  expect_null(p2$distr)

  p3 = aft$train(task)$predict(task, row_ids = 1:10)
  p4 = xgb_aft$train(task)$predict(task, row_ids = 1:10)
  expect_equal(xgb_aft$importance(), aft$importance())
  expect_equal(p3$crank, p4$crank)
  expect_equal(p3$lp, p4$lp)
  expect_true(all(p3$response > 0)) # predicted mean times
  expect_true(all(is.na(p4$response))) # no responses
})

test_that("surv.xgboost.cox distr via breslow works", {
  with_seed(42, {
    part = partition(task, ratio = 0.8)
    cox = lrn("surv.xgboost.cox", nrounds = 3)
    cox$train(task, part$train)
    p_train = cox$predict(task, part$train)
    p_test  = cox$predict(task, part$test)

    surv = breslow(
      times = task$times(part$train),
      status = task$status(part$train),
      lp_train = p_train$lp,
      lp_test = p_test$lp
    )

    expect_equal(surv, p_test$data$distr)
  })
})
