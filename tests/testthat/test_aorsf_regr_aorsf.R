test_that("autotest", {
  learner = lrn("regr.aorsf")
  expect_learner(learner)
  result = run_autotest(
    learner,
    exclude = "utf8_feature_names || feat_logical",
    N = 30
  )
  expect_true(result, info = result$error)
})
