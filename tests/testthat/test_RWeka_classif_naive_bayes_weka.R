skip_on_os("windows")
skip_if_not_installed("RWeka")

test_that("autotest", {
  learner = lrn("classif.naive_bayes_weka")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
