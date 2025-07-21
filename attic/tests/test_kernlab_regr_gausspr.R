test_that("autotest", {
  learner = lrn("regr.gausspr")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.gausspr sigma", {
  learner = lrn("regr.gausspr", tol = 0.1, kpar = list(sigma = 0.2))
  t = tsk("mtcars")
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)

  learner = lrn("regr.gausspr", tol = 0.1, sigma = 0.2)
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)
})
