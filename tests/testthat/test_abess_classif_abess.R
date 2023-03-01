test_that("autotest", {
  learner = lrn("classif.abess")
  expect_learner(learner)
  # See https://github.com/abess-team/abess/issues/493 for the exclusion argument
  result = run_autotest(learner, check_replicable = FALSE, exclude = "feat_single")

  expect_true(result, info = result$error)
})
