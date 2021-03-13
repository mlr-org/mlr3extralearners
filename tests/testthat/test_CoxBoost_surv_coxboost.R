# remotes::install_github("binderh/CoxBoost")
# install.packages(c("mlr3proba", "pracma"))
load_tests("surv.coxboost")

test_that("autotest", {
  learner = LearnerSurvCoxboost$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
