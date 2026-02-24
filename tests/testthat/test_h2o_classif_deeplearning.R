

test_that("autotest", {
  skip_if_not_installed("h2o")
  
  learner = lrn("classif.h2o.deeplearning", epochs = 10, hidden = c(20L, 20L), seed = 42L, reproducible = TRUE)
  expect_learner(learner)

  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
