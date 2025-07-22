test_that("autotest", {
  learner = lrn("regr.ksvm")
  expect_learner(learner)
  capture.output({result = run_autotest(learner)})
  expect_true(result, info = result$error)
})
