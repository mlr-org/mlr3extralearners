skip_if_not_installed("randomPlantedForest")

test_that("autotest", {
  learner = lrn("regr.rpf")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("marshaling preserves predictions", {
  task = tsk("mtcars")
  learner = lrn("regr.rpf", ntrees = 5L, splits = 5L)
  learner$train(task)
  expected = learner$predict(task)
  learner$marshal()
  expect_true(learner$marshaled)
  learner$unmarshal()
  expect_false(learner$marshaled)
  expect_equal(learner$predict(task)$response, expected$response)
})

test_that("marshal_include_data allows purifying a restored model", {
  task = tsk("mtcars")
  learner = lrn("regr.rpf", ntrees = 5L, splits = 5L)
  learner$train(task)
  learner$marshal()$unmarshal()
  expect_error(randomPlantedForest::purify(learner$model), "data")

  learner$param_set$set_values(marshal_include_data = TRUE)
  learner$train(task)
  learner$marshal()$unmarshal()$marshal()$unmarshal()
  expect_true(randomPlantedForest::is_purified(randomPlantedForest::purify(learner$model)))

  learner$param_set$set_values(marshal_include_data = FALSE)
  learner$train(task)
  learner$marshal(include_data = TRUE)$unmarshal()
  expect_true(randomPlantedForest::is_purified(randomPlantedForest::purify(learner$model)))
})
