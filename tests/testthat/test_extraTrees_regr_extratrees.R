install_learners("regr.extratrees")

test_that("autotest", {
  learner = lrn("regr.extratrees")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
