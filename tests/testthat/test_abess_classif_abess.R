test_that("autotest", {
  learner = lrn("classif.abess")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
