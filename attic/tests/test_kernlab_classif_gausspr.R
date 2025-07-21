test_that("autotest", {
  learner = lrn("classif.gausspr")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.gausspr sigma", {
  learner = lrn("classif.gausspr", tol = 0.1, kpar = list(sigma = 0.2))
  t = tsk("iris")

  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)

  learner = lrn("classif.gausspr", tol = 0.1, sigma = 0.2)
  learner$train(t)
  expect_equal(learner$model@kernelf@kpar$sigma, 0.2)
})
