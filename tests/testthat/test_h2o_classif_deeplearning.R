skip_if_not_installed("h2o")

test_that("autotest", {
  learner = lrn("classif.h2o.deeplearning",
    epochs = 1,
    hidden = c(5L, 5L),
    seed = 42L
  )
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
