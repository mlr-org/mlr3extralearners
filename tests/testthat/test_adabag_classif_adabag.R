skip_if_not_installed("adabag")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("classif.adabag")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names|feat_single")
  expect_true(result, info = result$error)
})
