test_that("autotest", {
  learner = lrn("regr.tabnet", device = "cpu", epochs = 30)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
