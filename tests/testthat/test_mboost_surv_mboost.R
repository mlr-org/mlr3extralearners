test_that("autotest ph", {
  learner = lrn("surv.mboost", baselearner = "bols", family = "coxph", center = TRUE)
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights|utf8_feature_names", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest aft", {
  learner = lrn("surv.mboost", family = "loglog", baselearner = "bols", center = TRUE)
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, exclude = "weights|utf8_feature_names", check_replicable = FALSE)
  expect_true(result, info = result$error)
})
