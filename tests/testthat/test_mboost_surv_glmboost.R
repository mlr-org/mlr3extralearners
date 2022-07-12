test_that("autotest ph", {
  learner = lrn("surv.glmboost", family = "coxph")
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights|utf8_feature_names", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest aft", {
  learner = lrn("surv.glmboost", family = "weibull")
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights|utf8_feature_names", check_replicable = FALSE)
  expect_true(result, info = result$error)
})
