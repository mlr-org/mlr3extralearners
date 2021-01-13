install_learners("surv.akritas")
load_tests("surv.akritas")

test_that("autotest", {
  learner = LearnerSurvAkritas$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
