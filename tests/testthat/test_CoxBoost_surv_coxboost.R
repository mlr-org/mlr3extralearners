remotes::install_github("binderh/CoxBoost")
install.packages(c("mlr3proba", "pracma"), repos = "https://cloud.r-project.org")
load_tests("surv.coxboost")

test_that("autotest surv.coxboost", {
  learner = LearnerSurvCoxboost$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
