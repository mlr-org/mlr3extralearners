skip_if_not_installed("abess")

test_that("autotest", {
  learner = lrn("classif.abess")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)

  expect_true(result, info = result$error)
})
