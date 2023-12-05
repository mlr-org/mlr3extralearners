skip_on_os("windows")

test_that("autotest", {
  learner = lrn("regr.DecisionStump")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity|missings_each_row")
  expect_true(result, info = result$error)
})
