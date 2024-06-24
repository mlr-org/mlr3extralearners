test_that("autotest", {
  set.seed(1)
  learner = lrn("classif.lightgbm", num_iterations = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("Can pass parameters", {
  task = tsk("iris")
  learner = lrn("classif.lightgbm", num_iterations = 5L, max_bin = 10L)
  expect_warning(learner$train(task), regexp = NA)
})

test_that("hotstarting works", {
  task = tsk("iris")
  learner = lrn("classif.lightgbm", num_iterations = 2000L)
  learner$train(task)
  stack = HotstartStack$new(list(learner))
  learner_hs = lrn("classif.lightgbm", num_iterations = 2001L)
  learner_hs$hotstart_stack = stack
  expect_true(is.null(get_private(learner_hs$model)$init_predictor))
})

test_that("early stopping works", {
  learner = lrn("classif.lightgbm", num_iterations = 1000, early_stopping_rounds = 10)
  learner$validate = 0.2
  task = tsk("pima")

  learner$train(task)

  expect_list(learner$internal_tuned_values)
  expect_number(learner$internal_tuned_values$num_iterations)
})
