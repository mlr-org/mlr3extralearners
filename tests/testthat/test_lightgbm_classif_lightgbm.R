install_learners("classif.lightgbm")
load_tests("classif.lightgbm")

test_that("autotest", {
  set.seed(1)
  learner = lrn("classif.lightgbm", obj = "binary", nrounds = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
