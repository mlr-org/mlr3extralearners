test_that("autotest", {
  learner = lrn("classif.catboost", iterations = 10)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
