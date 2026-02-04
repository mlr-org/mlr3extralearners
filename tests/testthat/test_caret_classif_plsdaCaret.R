skip_if_not_installed("caret")
skip_if_not_installed("pls")

test_that("autotest", {
  learner = lrn("classif.plsdaCaret", ncomp = 1) # set ncomp to 1 so learner works on single feature tasks
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
