install_learners("surv.akritas")

test_that("autotest", {
  learner <- LearnerSurvAkritas$new()
  expect_learner(learner)
  result <- run_autotest(learner, check_replicable = FALSE, exclude = "single")
  expect_true(result, info = result$error)
})
