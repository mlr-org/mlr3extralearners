skip_on_os("windows")

test_that("autotest", {
  learner = lrn("classif.bayes_net")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "(missings_each_row)")
  expect_true(result, info = result$error)
})
