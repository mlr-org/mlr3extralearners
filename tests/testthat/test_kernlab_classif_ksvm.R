skip_if_not_installed("kernlab")

test_that("autotest", {
  learner = lrn("classif.ksvm")
  expect_learner(learner)
  capture.output({
    result = run_autotest(learner)
  })
  expect_true(result, info = result$error)
})
