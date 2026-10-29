skip_if_not_installed("randomPlantedForest")

test_that("autotest", {
  with_seed(42, {
    learner = lrn("classif.rpf")
    expect_learner(learner)
    result = run_autotest(learner)
    expect_true(result, info = result$error)
  })
})

test_that("marshaling preserves predictions", {
  task = tsk("sonar")
  learner = lrn("classif.rpf", ntrees = 5L, splits = 5L, predict_type = "prob")
  learner$train(task)
  expected = learner$predict(task)
  learner$marshal()
  expect_true(learner$marshaled)
  learner$unmarshal()
  expect_false(learner$marshaled)
  expect_equal(learner$predict(task)$prob, expected$prob)
})
