skip_if_not_installed("ropls")

test_that("autotest", {
  learner = lrn("classif.opls")
  expect_learner(learner)
  # `predI = 1` and `orthoI = 1` require at least two features
  result = run_autotest(learner, exclude = "feat_single")
  expect_true(result, info = result$error)
})

test_that("errors if predI + orthoI exceeds the data dimensions", {
  task = tsk("sonar")$select(c("V1", "V2"))

  learner = lrn("classif.opls", predI = 1L, orthoI = 3L)

  expect_error(learner$train(task), "exceeds the minimum dimension")
})
