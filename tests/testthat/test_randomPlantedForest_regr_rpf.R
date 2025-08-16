skip_if_not_installed("randomPlantedForest")

test_that("autotest", {
  learner = lrn("regr.rpf")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
