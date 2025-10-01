skip_if_not_installed("rFerns")

test_that("autotest", {
  learner = lrn("classif.rFerns")
  expect_learner(learner, check_man = FALSE)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
