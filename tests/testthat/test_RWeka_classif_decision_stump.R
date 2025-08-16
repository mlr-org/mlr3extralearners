skip_on_os("windows")
skip_if_not_installed("RWeka")

test_that("autotest", {
  learner = lrn("classif.decision_stump")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "missings_each_row_binary|missings_each_row_multiclass")
  expect_true(result, info = result$error)
})
