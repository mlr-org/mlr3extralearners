skip_if_not_installed("stochtree")

test_that("autotest", {
  learner = lrn("regr.stochtree_bcf", prognostic_num_trees = 20L, treatment_num_trees = 10L, num_mcmc = 20L)
  expect_learner(learner)
  # the first logical, integer, or numeric feature is the treatment
  configure_learner = function(learner, task) {
    types = task$feature_types
    learner$param_set$set_values(treatment = types[type %in% c("logical", "integer", "numeric"), id][1L])
  }
  # single: the learner needs at least one covariate in addition to the treatment
  # check_replicable: the internal propensity model of bcf() is always seeded from std::random_device
  result = run_autotest(learner, exclude = "single", configure_learner = configure_learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("parameters are passed to the nested parameter lists", {
  task = tsk("mtcars")
  learner = lrn("regr.stochtree_bcf", treatment = "am", num_gfr = 2L, num_mcmc = 7L, prognostic_num_trees = 11L,
    treatment_num_trees = 5L, variance_num_trees = 3L, variance_forest_init = 0.1, keep_gfr = TRUE, random_seed = 1L)
  suppressWarnings(learner$train(task))
  model = learner$model
  expect_equal(model$model_params$num_samples, 9L)
  expect_equal(model$forests_mu$num_trees(), 11L)
  expect_equal(model$forests_tau$num_trees(), 5L)
  expect_equal(model$forests_variance$num_trees(), 3L)
})

test_that("treatment is validated", {
  task = tsk("mtcars")
  expect_error(lrn("regr.stochtree_bcf")$train(task), "treatment")
  expect_error(lrn("regr.stochtree_bcf", treatment = "foo")$train(task), "not a feature")
  expect_error(lrn("regr.stochtree_bcf", treatment = "am")$train(task$clone()$select("am")), "at least one feature")
  task_fct = as_task_regr(data.frame(y = rnorm(20), z = factor(rep(c("a", "b"), 10)), x = rnorm(20)), target = "y")
  expect_error(lrn("regr.stochtree_bcf", treatment = "z")$train(task_fct), "logical, integer, or numeric")
})

test_that("treatment effect and se", {
  task = tsk("mtcars")
  learner = lrn("regr.stochtree_bcf", treatment = "am", prognostic_num_trees = 20L, treatment_num_trees = 10L,
    num_mcmc = 20L, predict_type = "se")
  expect_error(learner$treatment_effect(task), "No model")
  learner$train(task)
  pred = learner$predict(task)

  x = as.data.frame(ordered_features(task, learner))
  z = x$am
  x$am = NULL
  draws = predict(learner$model, X = x, Z = z, terms = "y_hat")
  expect_equal(pred$response, rowMeans(draws))
  expect_equal(pred$se, apply(draws, 1L, sd))

  tau = learner$treatment_effect(task)
  expect_numeric(tau, len = task$nrow, any.missing = FALSE)
  expect_equal(tau, as.numeric(predict(learner$model, X = x, Z = z, type = "mean", terms = "cate")))
  expect_equal(learner$treatment_effect(task, row_ids = 1:5), tau[1:5])
})

test_that("set.seed makes training reproducible without propensity model", {
  task = tsk("mtcars")
  learner = lrn("regr.stochtree_bcf", treatment = "am", prognostic_num_trees = 20L, treatment_num_trees = 10L,
    num_mcmc = 10L, propensity_covariate = "none")
  p1 = with_seed(1L, learner$train(task)$predict(task)$response)
  p2 = with_seed(1L, learner$train(task)$predict(task)$response)
  expect_equal(p1, p2)
})

test_that("marshaling preserves predictions", {
  task = tsk("mtcars")
  learner = lrn("regr.stochtree_bcf", treatment = "am", prognostic_num_trees = 20L, treatment_num_trees = 10L,
    num_mcmc = 10L)
  learner$train(task)
  expected = learner$predict(task)
  tau = learner$treatment_effect(task)
  learner$marshal()
  expect_true(learner$marshaled)
  expect_error(learner$treatment_effect(task), "marshaled")
  learner$unmarshal()
  expect_false(learner$marshaled)
  expect_equal(learner$predict(task)$response, expected$response)
  expect_equal(learner$treatment_effect(task), tau)
})
