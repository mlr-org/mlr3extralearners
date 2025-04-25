test_that("autotest", {
  learner = lrn("classif.fastai")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner, check_replicable=FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})
