test_that("autotest", {
  learner = lrn("classif.tabpfn", train_mode = "both")
  expect_learner(learner)
  # reproducibility is not guaranteed, hence check_replicable = FALSE
  # see https://github.com/PriorLabs/TabPFN/blob/e8744e461dbd092d82389f6351f5f9cd5789d9d4/src/tabpfn/classifier.py#L320C17-L326C78
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
