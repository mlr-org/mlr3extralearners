install_learners("regr.gam")
load_tests("regr.gam")

test_that("autotest", {
  learner = lrn("regr.gam")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})
