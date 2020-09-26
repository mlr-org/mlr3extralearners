install_learners("surv.akritas")
remotes::install_github("RaphaelS1/survivalmodels", upgrade = "always", force = FALSE)

test_that("autotest", {
  learner <- LearnerSurvAkritas$new()
  expect_learner(learner)
  result <- run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
