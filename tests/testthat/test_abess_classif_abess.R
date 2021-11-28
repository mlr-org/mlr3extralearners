install_learners("classif.abess")
load_tests("classif.abess")

test_that("autotest", {
  learner = lrn("classif.abess")
  # learner = LearnerClassifAbess$new()
  # learner$param_set$values()
  expect_learner(learner)
  result = run_autotest(learner, predict_types = "response")
  expect_true(result, info = result$error)
})
