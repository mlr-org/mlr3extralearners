skip_if_not_installed("class")

test_that("autotest", {
  learner = lrn("classif.lvq1")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
