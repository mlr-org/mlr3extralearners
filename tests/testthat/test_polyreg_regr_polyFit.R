skip_if_not_installed("polyreg")

test_that("autotest", {
  # reduce interact deg to 1, otherwise univar tasks will fail
  learner = lrn("regr.polyFit", maxInteractDeg = 1)
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})
