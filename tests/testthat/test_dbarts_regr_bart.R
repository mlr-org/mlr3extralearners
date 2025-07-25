test_that("autotest", {
  learner = lrn("regr.bart")

  learner$param_set$values = c(
    learner$param_set$values,
    ntree = 5L)

  expect_learner(learner)
  capture.output({
    result = run_autotest(learner, exclude = "utf8_feature_names")
  })
  expect_true(result, info = result$error)
})
