skip_if_not_installed("mboost")

test_that("autotest", {
  learner = lrn("regr.gamboost", baselearner = "btree")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})
