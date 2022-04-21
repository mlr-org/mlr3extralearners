install_learners("surv.obliqueRSF")
load_tests("surv.obliqueRSF")

test_that("autotest", {
  set.seed(1) # there was presumable a weird bug
  learner = lrn("surv.obliqueRSF", compute_oob_predictions = TRUE)
  expect_learner(learner)
  result = run_autotest(learner, exclude = "single", N = 30, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
