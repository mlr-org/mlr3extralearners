skip_on_os("windows")
skip_if_not_installed("RWeka")

test_that("autotest", {
  learner = lrn("classif.naive_bayes_multinomial")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})
