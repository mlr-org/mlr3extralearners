skip_if_not_installed("qgam")

test_that("autotest", {
  learner = lrn("regr.qgam")
  expect_learner(learner)
  capture.output({
    result = run_autotest(learner, exclude = "utf8_feature_names")
  })
  expect_true(result, info = result$error)
})
