install_learners("surv.ctree")

test_that("autotest", {
  learner = LearnerSurvCTree$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
