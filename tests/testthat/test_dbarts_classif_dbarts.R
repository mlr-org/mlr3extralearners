install_learners("classif.dbarts")

test_that("autotest", {
  learner = lrn("classif.dbarts")

  learner$param_set$values <- c(
    learner$param_set$values,
    ntree = 5L
  )

  expect_learner(learner)
  result <- run_autotest(learner)
  expect_true(result, info = result$error)
})
