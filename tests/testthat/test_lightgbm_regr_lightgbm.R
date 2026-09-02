skip_if_not_installed("lightgbm")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("regr.lightgbm", num_iterations = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("hotstarting works", {
  task = tsk("mtcars")
  learner = lrn("regr.lightgbm", num_iterations = 2000L)
  learner$train(task)
  stack = HotstartStack$new(list(learner))
  learner_hs = lrn("regr.lightgbm", num_iterations = 2001L)
  learner_hs$hotstart_stack = stack
  learner_hs$train(task)
  expect_class(get_private(learner_hs$model)$init_predictor, "lgb.Predictor")
})

test_that("early stopping works", {
  task = tsk("mtcars")

  learner = lrn("regr.lightgbm",
    num_iterations = 1000,
    early_stopping_rounds = 10,
    validate = 0.2)

  learner$train(task)

  expect_list(learner$internal_tuned_values)
  expect_number(learner$internal_tuned_values$num_iterations)

  expect_list(learner$internal_valid_scores)
  expect_number(learner$internal_valid_scores$l2)

  learner = lrn("regr.lightgbm",
    num_iterations = 1000,
    early_stopping_rounds = 10,
    eval = list("rmse", "l1"),
    validate = 0.2)

  learner$train(task)

  expect_list(learner$internal_valid_scores)
  expect_number(learner$internal_valid_scores$l1)
  expect_number(learner$internal_valid_scores$rmse)
})

test_that("custom inner validation measure", {

  # internal measure
  task = tsk("mtcars")

  learner = lrn("regr.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    eval = list("rmse")
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "rmse")
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "rmse")

  # function
  task = tsk("mtcars")

  rmse = function(preds, dtrain) {
    truth = lightgbm::get_field(dtrain, "label")
    rmse = sqrt(mean((truth - preds)^2))
    return(list(name = "rmse", value = rmse, higher_better = FALSE))
  }

  learner = lrn("regr.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    eval = list(rmse)
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "rmse")
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "rmse")


  # mlr3 measure
  task = tsk("mtcars")

  learner = lrn("regr.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    eval = list(msr("regr.rmse"))
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "regr.rmse")
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "regr.rmse")

  # multiple measures
  task = tsk("mtcars")

  learner = lrn("regr.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    eval = list(msr("regr.mae"), "rmse")
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, c("rmse", "regr.mae"))
  expect_list(learner$model$record_evals$test$rmse$eval, types = "numeric", , len = 10)
  expect_list(learner$model$record_evals$test$regr.mae$eval, types = "numeric", , len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), c("rmse", "regr.mae"))
})

test_that("mlr3measures are equal to internal measures", {
  # response
  withr::local_seed(1)
  task = tsk("mtcars")

  learner = lrn("regr.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    eval = list(msr("regr.rmse"))
  )

  learner$train(task)
  log_mlr3 = as.numeric(learner$model$record_evals$test$regr.rmse$eval)

  withr::local_seed(1)
  learner$param_set$set_values(eval = list("rmse"))
  learner$train(task)

  log_internal = as.numeric(learner$model$record_evals$test$rmse$eval)

  expect_equal(log_mlr3, log_internal, tolerance = 1e-1)
})

test_that("best valid scores", {
  task = tsk("mtcars")

  # lightgbm keeps the last iteration, so the best scores can differ from the final ones
  learner = lrn("regr.lightgbm", num_iterations = 1000, early_stopping_rounds = 10, validate = 0.2)
  learner$train(task)

  expect_list(learner$best_valid_scores, types = "numeric")
  expect_equal(names(learner$best_valid_scores), names(learner$internal_valid_scores))
  # the best iteration is the one reported as internally tuned value
  best_iter = learner$internal_tuned_values$num_iterations
  expect_equal(
    learner$best_valid_scores$l2,
    learner$model$record_evals$test$l2$eval[[best_iter]]
  )
  # l2 is minimized, so the best iteration is at most as bad as the last one
  expect_true(learner$best_valid_scores$l2 <= learner$internal_valid_scores$l2)

  # without early stopping no best iteration is tracked
  learner = lrn("regr.lightgbm", num_iterations = 20, validate = 0.2)
  learner$train(task)
  expect_equal(learner$best_valid_scores, named_list())
  expect_list(learner$internal_valid_scores, types = "numeric")

  # without validation nothing is reported at all
  learner = lrn("regr.lightgbm", num_iterations = 20)
  learner$train(task)
  expect_null(learner$best_valid_scores)
  expect_null(learner$internal_valid_scores)
})
