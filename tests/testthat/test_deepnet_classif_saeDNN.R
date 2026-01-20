skip_if_not_installed("deepnet")

test_that("autotest", {
  withr::local_seed(123)
  learner = lrn("classif.saeDNN", numepochs = 5, learningrate = 0.5)
  expect_learner(learner)

  cfg = function(learner, task) {
    set.seed(1L)
  }

  result = run_autotest(learner, configure_learner = cfg)
  expect_true(result, info = result$error)
})
