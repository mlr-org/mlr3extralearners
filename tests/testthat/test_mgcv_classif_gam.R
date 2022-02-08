install_learners("classif.gam")
load_tests("classif.gam")

test_that("autotest", {
  learner = LearnerClassifGam$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
