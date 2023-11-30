skip_on_os("windows")

test_that("autotest", {
  learner = lrn("classif.NaiveBayesMultinomial")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "missings_binary")
  expect_true(result, info = result$error)
})
