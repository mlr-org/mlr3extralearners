skip_if_not_installed("ropls")

test_that("autotest", {
  learner = lrn("classif.opls")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})
