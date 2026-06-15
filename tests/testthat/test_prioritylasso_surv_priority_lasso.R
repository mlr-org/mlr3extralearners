skip_if_not_installed("prioritylasso")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("surv.priority_lasso")

  # Dynamically define a single block containing all features for the given task
  cfg_lrn = function(learner, task) {
    s = seq_along(task$feature_names)
    learner$param_set$set_values(blocks = set_names(list(s), "bp1"))
  }

  result = run_autotest(learner, N = 50, exclude = "feat_single", configure_learner = cfg_lrn)
  expect_true(result, info = result$error)
})

test_that("adaptive.order works", {
  withr::local_seed(42)
  n = 50
  p_signal = 5
  p_noise1 = 100
  p_noise2 = 100

  # Signal block: features correlated with Cox regression outcome
  X_signal = matrix(rnorm(n * p_signal), nrow = n, ncol = p_signal)
  true_coef = runif(p_signal, log(1.2), log(2.9))
  lp = as.vector(X_signal %*% true_coef)
  base_haz = 0.1 # constant baseline hazard

  # Generate event times (Bender et al. 2005) for Cox model
  U = runif(n)
  event_times = -log(U) / (base_haz * exp(lp))
  censor_times = runif(n, 0, quantile(event_times, 0.9)) # ~30% censoring
  times = pmin(event_times, censor_times) # obsered times
  status = as.integer(event_times <= censor_times)

  # Two blocks with noise features
  X_noise1 = matrix(rnorm(n * p_noise1), nrow = n, ncol = p_noise1)
  X_noise2 = matrix(rnorm(n * p_noise2), nrow = n, ncol = p_noise2)

  # Combine blocks: (noise, noise, signal) - the opposite of the desired order
  X = cbind(X_noise1, X_noise2, X_signal)
  colnames(X) = c(paste0("noise", 1:(p_noise1 + p_noise2)), paste0("signal", 1:p_signal))

  # Define blocks list (noise blocks first, then signal)
  blocks = list(
    noise1 = seq_len(p_noise1),
    noise2 = p_noise1 + seq_len(p_noise2),
    signal = p_noise1 + p_noise2 + seq_len(p_signal)
  )

  # define task
  task = as_task_surv(
    x = data.frame(X, time = times, event = status),
    id = "test"
  )
  part = partition(task)

  # Non‑adaptive (noise first)
  lrn_non_adapt = lrn("surv.priority_lasso", blocks = blocks, nfolds = 5L, id = "PL_non_adaptive")
  lrn_non_adapt$train(task, part$train)

  expect_list(lrn_non_adapt$model$blocks, len = 3)
  expect_equal(
    names(lrn_non_adapt$model$blocks),
    c("noise1", "noise2", "signal") # block order didn't change
  )
  expect_null(lrn_non_adapt$model$block.penalty.factors) # no penalty factors since adaptive.order != TRUE

  # Adaptive (order determined by data)
  lrn_adapt = lrn("surv.priority_lasso", blocks = blocks, adaptive.order = TRUE, nfolds = 5L, id = "PL_adaptive")
  lrn_adapt$train(task, part$train)

  expect_list(lrn_adapt$model$blocks, len = 3)
  expect_equal(
    names(lrn_adapt$model$blocks),
    c("signal", "noise1", "noise2") # order changed!
  )
  expect_equal(
    names(lrn_adapt$model$block.penalty.factors),
    c("signal", "noise1", "noise2") # order changed!
  )
  # signal block has lower penalty factor than the noise blocks
  expect_true(lrn_adapt$model$block.penalty.factors[1] <= lrn_adapt$model$block.penalty.factors[2])
  expect_true(lrn_adapt$model$block.penalty.factors[1] <= lrn_adapt$model$block.penalty.factors[3])

  # Adaptive model should have better performance (higher C-index)
  p_adapt = lrn_adapt$predict(task, part$test)
  p_non_adapt = lrn_non_adapt$predict(task, part$test)
  expect_gt(p_adapt$score(), p_non_adapt$score())
})
