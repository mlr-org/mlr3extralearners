if (!requireNamespace("catboost", quietly = TRUE)) {
  install_catboost("0.26.1")
}


test_that("autotest", {
  learner = lrn("regr.catboost", iterations = 10)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})


# It does not make sense to test the parameters because they are not accessible within
# R but only listed online: https://catboost.ai/docs/concepts/r-reference_catboost-train.html

