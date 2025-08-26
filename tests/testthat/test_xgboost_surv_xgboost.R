skip_if_not_installed("xgboost")

task = tsk("lung")
task = mlr3pipelines::po("encode")$train(list(task))[[1]]$filter(1:100) # encode sex factor

test_that("autotest", {
  withr::local_seed(2)
  learner = lrn("surv.xgboost.aft", nrounds = 10)
  expect_learner(learner)
  result = run_autotest(learner, N = 10, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest cox", {
  withr::local_seed(1)
  learner = lrn("surv.xgboost.cox", nrounds = 10)
  expect_learner(learner)
  result = run_autotest(learner, N = 10, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest aft", {
  withr::local_seed(1)
  learner = lrn("surv.xgboost.aft", nrounds = 10)
  expect_learner(learner)
  result = run_autotest(learner, N = 10, check_replicable = FALSE)
  expect_true(result, info = result$error)
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
    validate = 0.2
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
    validate = 0.2
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

  p1 = cox$train(task)$predict(task, row_ids = 1:10)
  expect_class(p1$distr, "Matdist") # we get distr predictions
})

test_that("surv.xgboost.cox distr via breslow works", {
  withr::local_seed(42)
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

test_that("marshaling works for surv.xgboost.cox", {
  # Basically the same test as `expect_marshalable_learner()`,
  # but uses `all.equal()` to compare xgb.DMatrix objects rather than `expect_equal`.
  # The latter always throws an error unless two objects are identical, i.e.,
  # with the same externalptr etc.

  learner = lrn("surv.xgboost.cox",
    nrounds = 10,
    early_stopping_rounds = 10,
    validate = 0.2
  )

  learner$train(task)

  expect_true("marshal" %in% learner$properties)
  learner$state = NULL

  has_public = function(learner, x) {
    exists(x, learner, inherits = FALSE)
  }

  expect_true(has_public(learner, "marshal") && checkmate::test_function(learner$marshal, nargs = 0))
  expect_true(has_public(learner, "unmarshal") && checkmate::test_function(learner$unmarshal, nargs = 0))
  expect_true(has_public(learner, "marshaled"))

  expect_equal(learner$marshaled, FALSE)

  learner$train(task)
  model = learner$model
  class_prev = class(model)
  expect_false(learner$marshaled)
  expect_equal(mlr3::is_marshaled_model(learner$model), learner$marshaled)
  expect_invisible(learner$marshal())
  if (!inherits(learner, "GraphLearner")) {
    expect_true(learner$marshaled)
  }
  expect_equal(mlr3::is_marshaled_model(learner$model), learner$marshaled)

  # unmarshaling works
  expect_invisible(learner$unmarshal())
  # can predict after unmarshaling
  expect_prediction(learner$predict(task))
  # model is reset (this is different from `expect_marshalable_learner`)
  expect_equal(learner$model$model, model$model)
  expect_true(all.equal(learner$model$train_data, model$train_data))
  # marshaled is set accordingly
  expect_false(learner$marshaled)
  expect_equal(class(learner$model), class_prev)
})
