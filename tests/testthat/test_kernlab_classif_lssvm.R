skip_if_not_installed("kernlab")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("classif.lssvm")
  expect_learner(learner)
  capture.output({
    result = run_autotest(learner, exclude = "single|utf8_feature_names_multiclass", N = 100L)
  })
  expect_true(result, info = result$error)
})

test_that("classif.lssvm sigma", {
  learner = lrn("classif.lssvm", kpar = list(sigma = 0.2))
  t = tsk("iris")
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)

  learner = lrn("classif.lssvm", sigma = 0.2)
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)
})
