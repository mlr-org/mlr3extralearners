test_that("autotest", {
  learner = lrn("classif.adabag")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner, exclude = "feat_all_binary || utf8_feature_names_binary")
  expect_true(result, info = result$error)
})
