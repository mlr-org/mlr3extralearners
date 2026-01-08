skip_if_not_installed("deepnet")

test_that("autotest", {
  learner = lrn("classif.dbnDNN", numepochs = 20, learningrate = 0.5)
  expect_learner(learner)
  result = run_autotest(learner, exclude = "single")
  expect_true(result, info = result$error)
})
