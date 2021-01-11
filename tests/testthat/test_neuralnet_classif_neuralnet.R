install_learners("classif.neuralnet")
# load_tests("classif.neuralnet")

test_that("autotest", {
  learner = LearnerClassifNeuralnet$new()
  learner$param_set$values = list("layernumber" = 3, stepmax = 1e+20, layer01size = 3, layer02size = 3)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
