skip_if_not_installed("stochtree")

test_that("autotest", {
  learner = lrn("regr.stochtree", num_trees = 20L, num_mcmc = 20L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("parameters are passed to the nested parameter lists", {
  task = tsk("mtcars")
  learner = lrn("regr.stochtree", num_gfr = 2L, num_mcmc = 7L, num_trees = 11L, variance_num_trees = 3L,
    keep_gfr = TRUE, random_seed = 1L)
  suppressWarnings(learner$train(task))
  params = learner$model$model_params
  expect_equal(params$num_samples, 9L)
  expect_equal(learner$model$mean_forests$num_trees(), 11L)
  expect_equal(learner$model$variance_forests$num_trees(), 3L)
})

test_that("se is the posterior standard deviation", {
  task = tsk("mtcars")
  learner = lrn("regr.stochtree", num_trees = 20L, num_mcmc = 20L, predict_type = "se")
  learner$train(task)
  pred = learner$predict(task)
  draws = predict(learner$model, X = as.data.frame(ordered_features(task, learner)), terms = "y_hat")
  expect_equal(pred$response, rowMeans(draws))
  expect_equal(pred$se, apply(draws, 1L, sd))
})

test_that("random_seed and set.seed make training reproducible", {
  task = tsk("mtcars")
  learner = lrn("regr.stochtree", num_trees = 20L, num_mcmc = 10L)
  p1 = with_seed(1L, learner$train(task)$predict(task)$response)
  p2 = with_seed(1L, learner$train(task)$predict(task)$response)
  expect_equal(p1, p2)

  learner$param_set$set_values(random_seed = 3L)
  expect_equal(learner$train(task)$predict(task)$response, learner$train(task)$predict(task)$response)
})

test_that("marshaling preserves predictions", {
  task = tsk("mtcars")
  learner = lrn("regr.stochtree", num_trees = 20L, num_mcmc = 10L)
  learner$train(task)
  expected = learner$predict(task)
  learner$marshal()
  expect_true(learner$marshaled)
  learner$unmarshal()
  expect_false(learner$marshaled)
  expect_equal(learner$predict(task)$response, expected$response)
})
