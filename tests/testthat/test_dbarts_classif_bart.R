install_learners("classif.bart")

test_that("autotest", {
  learner = lrn("classif.bart")

  learner$param_set$values <- c(
    learner$param_set$values,
    ntree = 5L
  )

  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})
