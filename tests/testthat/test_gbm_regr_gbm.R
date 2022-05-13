test_that("autotest", {
  learner = LearnerRegrGBM$new()
  learner$param_set$values = mlr3misc::insert_named(
    learner$param_set$values,
    list(n.minobsinnode = 1))
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
