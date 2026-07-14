skip_if_not_installed("GPfit")
skip_on_os("windows")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("regr.gpfit")
  expect_learner(learner)
  capture.output({
    # the single_integer task has duplicated design points, which GPfit cannot handle
    result = run_autotest(learner, exclude = "feat_single_integer", check_replicable = FALSE)
  })
  expect_true(result, info = result$error)
})
