test_that("autotest", {
  learner = lrn("classif.aorsf")
  expect_learner(learner)
  result = run_autotest(
    learner,
    exclude = "utf8_feature_names",
    N = 30
  )
  expect_true(result, info = result$error)
})
