skip_if_not_installed("h2o")

test_that("autotest", {

  learner = lrn("classif.h2o.randomForest")
  expect_learner(learner, seed = 42L)

  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
