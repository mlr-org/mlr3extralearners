test_that("Python config is valid", {
  print(reticulate::py_config())
})

test_that("autotest", {
  learner = lrn("classif.tabpfn")
  expect_learner(learner)
  # reproducibility is not guaranteed, hence check_replicable = FALSE
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("marshaling works for classif.tabpfn", {
  learner = lrn("classif.tabpfn")
  task = tsk("iris")
  # expect_marshalable_learner(learner, task)

  learner$train(task)
  pred = learner$predict(task)
  model = learner$model
  class_prev = class(model)

  # checks for marshaling is the same as expect_marshalable_learner
  expect_false(learner$marshaled)
  expect_equal(is_marshaled_model(learner$model), learner$marshaled)
  expect_invisible(learner$marshal())
  expect_equal(mlr3::is_marshaled_model(learner$model), learner$marshaled)

  # checks for unmarshaling differs -- instead of checking equality of model,
  # we check equality of predictions, because expect_equal() on python objects
  # checks the pointer which almost always changes after unmarshaling
  expect_invisible(learner$unmarshal())
  expect_prediction(learner$predict(task))
  expect_equal(learner$predict(task), pred)
  expect_false(learner$marshaled)
  expect_equal(class(learner$model), class_prev)
})

test_that("categorical feature columns are encoded correctly", {
  n = 6
  task = as_task_classif(
    data.frame(
      x1 = sample(1:3, n, replace = TRUE),
      x2 = sample(1:3, n, replace = TRUE),
      x3 = sample(1:3, n, replace = TRUE),
      y = sample(c(0, 1), n, replace = TRUE)
    ),
    target = "y"
  )
  learner = lrn("classif.tabpfn", categorical_features_indices = 5)
  expect_error(learner$train(task))
  learner = lrn("classif.tabpfn", categorical_features_indices = 1:3)
  learner$train(task)
  expect_identical(learner$model$fitted$categorical_features_indices, 0:2)
})

test_that("device selection works", {
  if (!reticulate::py_module_available("torch")) {
    skip("torch not available for testing.")
  }
  torch = reticulate::import("torch")

  learner = lrn("classif.tabpfn", device = "cpu")
  learner$train(tsk("iris"))
  expect_class(learner$model$fitted$device, c("torch.device", "python.builtin.object"))
  expect_identical(learner$model$fitted$device$type, "cpu")

  learner = lrn("classif.tabpfn", device = "auto")
  learner$train(tsk("iris"))
  expect_identical(learner$model$fitted$device, "auto")
})

test_that("checks for memory saving mode work", {
  learner = lrn("classif.tabpfn")
  task = tsk("iris")

  expect_error(learner$param_set$set_values(memory_saving_mode = "foo"))
  expect_error(learner$param_set$set_values(memory_saving_mode = c(1, 2)))

  learner$param_set$set_values(memory_saving_mode = "auto")
  learner$train(task)
  expect_identical(learner$model$fitted$memory_saving_mode, "auto")

  learner$param_set$set_values(memory_saving_mode = TRUE)
  learner$train(task)
  expect_identical(learner$model$fitted$memory_saving_mode, TRUE)

  learner$param_set$set_values(memory_saving_mode = 50)
  learner$train(task)
  expect_identical(learner$model$fitted$memory_saving_mode, 50)
})
