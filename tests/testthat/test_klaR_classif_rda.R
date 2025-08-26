skip_if_not_installed("klaR")

test_that("autotest", {
  learner = lrn("classif.rda")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner, exclude = c("utf8_feature_names"))  # ä + ẞ problematic
  expect_true(result, info = result$error)
})
