skip_if_not_installed("prioritylasso")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("classif.priority_lasso", type.measure = "class")

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
  n = 200
  p_signal = 5
  p_noise = 50

  # Signal block: features correlated with logistic regression outcome
  X_signal = matrix(rnorm(n * p_signal), nrow = n, ncol = p_signal)
  true_coef = runif(p_signal, 0.5, 1.5)
  lp = X_signal %*% true_coef
  prob = plogis(lp)
  y = rbinom(n, 1, prob)

  # Block with noise features
  X_noise = matrix(rnorm(n * p_noise), nrow = n, ncol = p_noise)

  # Combine blocks: noise block first, signal block second (the opposite of desired order)
  X = cbind(X_noise, X_signal)
  colnames(X) = c(paste0("noise", 1:p_noise), paste0("signal", 1:p_signal))

  # Define blocks list (noise block first, then signal)
  blocks = list(
    noise = seq_len(p_noise),
    signal = p_noise + seq_len(p_signal)
  )

  # define task
  task = as_task_classif(x = data.frame(X, y), id = "test", target = "y", positive = "1")
  part = partition(task)

  # first fit priority lasso model where the blocks are taken as defined => (noise, signal)
  lrn_non_adapt = lrn(
    "classif.priority_lasso",
    type.measure = "class",
    blocks = blocks,
    nfolds = 5L,
    predict_type = "prob",
    block1.penalization = FALSE
  )
  lrn_non_adapt$id = "PL_non_adaptive"
  lrn_non_adapt$train(task, part$train)

  expect_list(lrn_non_adapt$model$blocks, len = 2)
  expect_equal(names(lrn_non_adapt$model$blocks), c("noise", "signal")) # block order didn't change
  expect_null(lrn_non_adapt$model$block.penalty.factors) # no penalty factors since adaptive.order != TRUE

  # now fit adaptive priority block model
  lrn_adapt = lrn(
    "classif.priority_lasso",
    type.measure = "class",
    blocks = blocks,
    adaptive.order = TRUE,
    nfolds = 5L,
    predict_type = "prob"
  )
  lrn_adapt$id = "PL_adaptive"
  lrn_adapt$train(task, part$train)

  expect_list(lrn_adapt$model$blocks, len = 2)
  expect_equal(names(lrn_adapt$model$blocks), c("signal", "noise")) # order changed
  expect_equal(names(lrn_adapt$model$block.penalty.factors), c("signal", "noise"))
  expect_true(lrn_adapt$model$block.penalty.factors[1] <= lrn_adapt$model$block.penalty.factors[2])

  # adaptive model should have better performance than non-adaptive model
  p_adapt = lrn_adapt$predict(task, part$test)
  p_non_adapt = lrn_non_adapt$predict(task, part$test)
  expect_lt(p_adapt$score(), p_non_adapt$score()) # default: classif error
  expect_gt(p_adapt$score(msr("classif.auc")), p_non_adapt$score(msr("classif.auc")))
})

test_that("block1.penalization = FALSE works", {
  withr::local_seed(42)
  task = tsk("sonar")
  learner = lrn(
    "classif.priority_lasso",
    blocks = list(a = 1:30, 31:60),
    type.measure = "class",
    predict_type = "prob",
    block1.penalization = FALSE
  )
  learner$train(task)

  # prediction works
  expect_silent({
    p = learner$predict(task)
  })
  # class names are correct
  expect_equal(levels(p$response), task$class_names)
})
