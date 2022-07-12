test_that("autotest", {
  learner = lrn("regr.earth", varmod.method = "const", nfold = 2, ncross = 3)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
