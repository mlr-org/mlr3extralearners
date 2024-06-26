test_that("autotest", {
  library(penalized)
  learner = lrn("regr.penalized", trace = FALSE)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  browser()
  expect_true(result, info = result$error)
})
