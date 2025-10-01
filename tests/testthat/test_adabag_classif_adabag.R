skip_if_not_installed("adabag")

test_that("autotest", {
  options(rgl.useNULL = TRUE)
  learner = lrn("classif.adabag")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner, exclude = "utf8_feature_names|feat_single")
  expect_true(result, info = result$error)
})
