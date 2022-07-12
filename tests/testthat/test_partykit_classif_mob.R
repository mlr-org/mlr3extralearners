test_that("autotest", {
  # use a senseless logit model and partition with respect to all features
  logit_ = function(y, x, start = NULL, weights = NULL, offset = NULL, ...) {
    glm(y ~ 1, family = binomial, start = start, ...)
  }
  learner = LearnerClassifMob$new()
  learner$param_set$values$rhs = "."
  learner$param_set$values$fit = logit_
  learner$param_set$values$additional = list(maxit = 100)
  learner$feature_types = c("logical", "integer", "numeric", "factor", "ordered")
  learner$properties = c("twoclass", "weights")

  predict_fun = function(object, newdata, task, .type) {
    p = unname(predict(object, newdata = newdata, type = "response"))
    levs = task$levels(task$target_names)[[1L]]

    if (.type == "response") {
      ifelse(p < 0.5, levs[1L], levs[2L])
    } else {
      prob_vector_to_matrix(p, levs)
    }
  }
  learner$param_set$values$predict_fun = predict_fun
  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})
