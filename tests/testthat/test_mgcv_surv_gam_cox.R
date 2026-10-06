skip_if_not_installed("mgcv")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("surv.gam.cox")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})
