install_learners("classif.gam")
load_tests("classif.gam")

test_that("autotest", {
  learner = LearnerClassifGam$new()
  expect_learner(learner)
  result = run_autotest(learner, exlude = "utf8_feature_names")
  expect_true(result, info = result$error)
})
