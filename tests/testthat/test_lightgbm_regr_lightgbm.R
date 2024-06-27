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
  learner_hs = lrn("classif.lightgbm", num_iterations = 2001L)
  learner_hs$hotstart_stack = stack
  expect_true(is.null(get_private(learner_hs$model)$init_predictor))
})


test_that("early stopping works", {
  learner = lrn("regr.lightgbm", num_iterations = 1000, early_stopping_rounds = 10)
  learner$validate = 0.2
  task = tsk("mtcars")

  learner$train(task)

  expect_list(learner$internal_tuned_values)
  expect_number(learner$internal_tuned_values$num_iterations)

  expect_list(learner$internal_valid_scores)
  expect_number(learner$internal_valid_scores$l2)

  learner = lrn("regr.lightgbm", num_iterations = 1000, early_stopping_rounds = 10, eval = c("rmse", "l1"))
  learner$validate = 0.2
  learner$train(task)

  expect_list(learner$internal_valid_scores)
  expect_number(learner$internal_valid_scores$l1)
  expect_number(learner$internal_valid_scores$rmse)
})
