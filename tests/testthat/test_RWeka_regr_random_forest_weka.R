skip_on_os("windows")

test_that("autotest", {
  learner = lrn("regr.random_forest_weka")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
