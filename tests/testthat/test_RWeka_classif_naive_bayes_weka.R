skip_on_os("windows")

test_that("autotest", {
  learner = lrn("classif.naive_bayes_weka")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
