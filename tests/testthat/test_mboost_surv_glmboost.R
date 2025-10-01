skip_if_not_installed("mboost")

test_that("autotest ph", {
  learner = lrn("surv.glmboost", family = "coxph")
  expect_learner(learner)
  exclude_str = "weights|utf8_feature_names|feat_single_factor|feat_all"
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = exclude_str, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest aft", {
  learner = lrn("surv.glmboost", family = "weibull")
  expect_learner(learner)
  exclude_str = "weights|utf8_feature_names|feat_single_factor|feat_all"
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = exclude_str, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("can't get importance or selected features on task with factors", {
  task = tsk("lung")
  learner = lrn("surv.glmboost")
  learner$train(task)
  expect_class(learner$model, "glmboost")
  expect_error(learner$importance())
  expect_error(learner$selected_features())
})
