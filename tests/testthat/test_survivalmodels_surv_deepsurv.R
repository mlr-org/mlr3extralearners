install_learners("surv.deepsurv")
remotes::install_github("RaphaelS1/survivalmodels", upgrade = "always", force = FALSE)

np = reticulate::import("numpy")
torch = reticulate::import("torch")
set.seed(1)
np$random$seed(1L)
torch$manual_seed(1L)

test_that("autotest", {
  learner = LearnerSurvDeepsurv$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
