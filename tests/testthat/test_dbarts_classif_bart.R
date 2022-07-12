test_that("autotest", {
  learner = lrn("classif.bart")

  learner$param_set$values = c(
    learner$param_set$values,
    ntree = 5L
  )

  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity|utf8_feature_names")
  expect_true(result, info = result$error)
})
