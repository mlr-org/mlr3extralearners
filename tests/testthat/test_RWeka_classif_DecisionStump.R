skip_on_os("windows")

test_that("autotest", {
  learner = lrn("classif.DecisionStump")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "missings_each_row_binary|missings_each_row_multiclass")
  expect_true(result, info = result$error)
})
