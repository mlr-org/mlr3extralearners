install_learners("regr.lightgbm")
load_tests("regr.lightgbm")

test_that("autotest", {
  set.seed(1)
  learner = lrn("regr.lightgbm", obj = "regression", nrounds = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
