install_learners("classif.abess")
load_tests("classif.abess")

test_that("autotest", {
  learner = lrn("classif.abess")
  expect_learner(learner)
  result = run_autotest(learner, predict_types = "response", exclude = "feat_single")
  expect_true(result, info = result$error)
})
