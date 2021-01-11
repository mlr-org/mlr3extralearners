install_learners("regr.neuralnet")
# load_tests("regr.neuralnet")

test_that("autotest", {
  learner = LearnerRegrNeuralnet$new()
  learner$param_set$values = list("layernumber" = 2, stepmax = 1e+20)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
