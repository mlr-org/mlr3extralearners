skip_if_not_installed("FNN")

test_that("autotest", {
  learner = lrn("classif.fnn", k = 10)
  expect_learner(learner)
  result = run_autotest(learner, predict_types = "response")
  expect_true(result, info = result$error)
})
