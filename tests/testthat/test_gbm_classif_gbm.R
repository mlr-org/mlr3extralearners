test_that("autotest", {
  learner = LearnerClassifGBM$new()
  learner$param_set$values = mlr3misc::insert_named(
    learner$param_set$values,
    list(n.minobsinnode = 1))
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single_multiclass || weights_binary")
  expect_true(result, info = result$error)
})
