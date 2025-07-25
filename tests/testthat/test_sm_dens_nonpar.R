test_that("autotest", {
  learner = lrn("dens.nonpar")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
