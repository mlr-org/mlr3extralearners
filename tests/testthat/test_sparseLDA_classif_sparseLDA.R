skip_if_not_installed("sparseLDA")
skip_if_not_installed("elasticnet")
skip_if_not_installed("MASS")

test_that("autotest", {
  learner = lrn("classif.sparseLDA")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single_integer_binary")
  expect_true(result, info = result$error)
})
