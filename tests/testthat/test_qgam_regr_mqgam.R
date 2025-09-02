skip_if_not_installed("qgam")

test_that("autotest", {
  learner = lrn("regr.mqgam")
  expect_learner(learner, check_man = FALSE)
  capture.output({
    result = run_autotest(learner, exclude = "utf8_feature_names")
  })
  expect_true(result, info = result$error)
})
