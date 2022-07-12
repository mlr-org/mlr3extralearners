test_that("autotest", {
  set.seed(1)
  # use a senseless linear model and partition with respect to all features
  lm_ = function(y, x, start = NULL, weights = NULL, offset = NULL, ...) {
    lm(y ~ 1, ...)
  }
  learner = LearnerRegrMob$new()
  learner$param_set$values$rhs = "."
  learner$param_set$values$fit = lm_
  learner$feature_types = c("logical", "integer", "numeric", "factor", "ordered")

  predict_fun = function(object, newdata, task, .type) {
    preds = predict(object, newdata = newdata, type = "response", se.fit = TRUE)
    cbind(preds$fit, preds$se.fit)
  }
  learner$param_set$values$predict_fun = predict_fun
  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})
