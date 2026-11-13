skip_if_not_installed("XBART")

test_that("autotest", {
  learner = lrn("regr.xbart", num_trees = 20L, num_sweeps = 10L)
  expect_learner(learner)
  # XBART ignores set.seed(), reproducibility requires the random_seed parameter
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("random_seed makes training reproducible", {
  task = tsk("mtcars")
  learner = lrn("regr.xbart", num_trees = 20L, num_sweeps = 10L, random_seed = 1L)
  pred1 = learner$train(task)$predict(task)$response
  pred2 = learner$train(task)$predict(task)$response
  expect_equal(pred1, pred2)
})

test_that("burn-in sweeps are discarded in the prediction", {
  task = tsk("mtcars")
  learner = lrn("regr.xbart", num_trees = 20L, num_sweeps = 10L, burnin = 3L, random_seed = 1L)
  learner$train(task)
  X = as.matrix(task$data(cols = task$feature_names))
  pred = predict(learner$model, X)
  expect_equal(ncol(pred), 10L)
  expect_equal(learner$predict(task)$response, unname(rowMeans(pred[, 4:10])))
})

test_that("training is silent", {
  learner = lrn("regr.xbart", num_trees = 20L, num_sweeps = 10L)
  expect_silent(learner$train(tsk("mtcars")))
})
