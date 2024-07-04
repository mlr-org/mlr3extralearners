test_that("autotest", {
  set.seed(1)
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
    eval = c("rmse", "l1"),
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
    early_stopping_rounds = 10
  )

  learner$internal_valid_measure = list("rmse")
  learner$train(task)

  expect_named(learner$model$record_evals$test, c("rmse"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "rmse")

  # function
  task = tsk("mtcars")

  learner = lrn("regr.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10
  )

  learner$internal_valid_measure = list(function(preds, dtrain) {
    truth = lightgbm::get_field(dtrain, "label")
    rmse = sqrt(mean((truth - preds)^2))
    return(list(name = "rmse", value = rmse, higher_better = FALSE))
  })
  learner$train(task)

  expect_named(learner$model$record_evals$test, c("rmse"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), c("rmse"))


  # mlr3 measure
  task = tsk("mtcars")

  learner = lrn("regr.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10
  )

  learner$internal_valid_measure = list(msr("regr.rmse"))
  learner$train(task)

  expect_named(learner$model$record_evals$test, c("regr.rmse"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), c("regr.rmse"))
})
