skip_on_os("windows")

test_that("autotest", {
  learner = lrn("classif.LMT")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
