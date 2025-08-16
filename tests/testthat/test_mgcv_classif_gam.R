skip_if_not_installed("mgcv")

test_that("autotest", {
  learner = lrn("classif.gam")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})
