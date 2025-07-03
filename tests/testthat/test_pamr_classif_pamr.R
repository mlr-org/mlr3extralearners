test_that("autotest", {
  learner = lrn("classif.pamr")
  expect_learner(learner, check_man = FALSE)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner, exclude = "feat")
  expect_true(result, info = result$error)
})
