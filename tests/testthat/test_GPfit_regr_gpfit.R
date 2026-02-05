skip_if_not_installed("GPfit")

test_that("autotest", {
  learner = lrn("regr.gpfit")
expect_learner(learner)
  capture.output({
    result = run_autotest(learner, check_replicable = FALSE)
  })
  expect_true(result, info = result$error)
})
