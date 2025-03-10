test_that("autotest", {
  learner = lrn("classif.tabnet", device = "cpu", epochs = 20)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
