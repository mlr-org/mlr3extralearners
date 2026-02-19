skip_if_not_installed("ncvreg")

test_that("autotest", {
  learner = lrn("surv.cv_ncvsurv")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("prediction lambda", {
  task = tsk("lung")$select(c("age", "meal.cal", "pat.karno", "ph.ecog", "ph.karno", "wt.loss"))
  learner = lrn("surv.cv_ncvsurv")
  expect_silent(learner$train(task))

  # predict: lamdba.min (by default)
  p1 = learner$predict(task)
  # predict: last lambda => practically no regularization
  lam = learner$model$lambda[100]
  learner$param_set$set_values(.values = list(pred_lambda = lam))
  p2 = learner$predict(task)

  # prediction changes
  expect_false(all(p1$lp == p2$lp))

  # the selected features are strictly less with higher penalization
  sf1 = learner$selected_features()
  sf2 = learner$selected_features(lambda = lam)
  expect_subset(sf1, task$feature_names)
  expect_subset(sf2, task$feature_names)
  expect_lt(length(sf1), length(sf2))
})
