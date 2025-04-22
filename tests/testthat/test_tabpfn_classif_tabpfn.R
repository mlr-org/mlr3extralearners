test_that("autotest tabpfn", {
  set.seed(1)
  learner = lrn("classif.tabpfn", train_mode = "both")
  expect_learner(learner)
  result = run_autotest(learner, N = 400, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
