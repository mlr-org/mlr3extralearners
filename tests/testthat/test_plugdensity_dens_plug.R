test_that("autotest", {
  set.seed(1)
  learner = lrn("dens.plug")
  expect_learner(learner)
  # mlr3proba's generate_task does not respect feature types
  result = run_autotest(learner) # exclude = "integer" (CHECK IF IT WORKS)
  expect_true(result, info = result$error)
})
