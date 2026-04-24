skip_if_not_installed("reticulate")

test_that("regr.gpytorch kernel parameter", {
  skip_if(!reticulate::py_module_available("gpytorch"))
  
  task = tsk("mtcars")
  
  learner = lrn("regr.gpytorch", kernel = "rbf", n_iter = 20)
  learner$train(task)
  pred = learner$predict(task)
  expect_prediction_regr(pred)
  
  learner = lrn("regr.gpytorch", kernel = "matern", n_iter = 20)
  learner$train(task)
  pred = learner$predict(task)
  expect_prediction_regr(pred)
})

test_that("regr.gpytorch lr and n_iter parameters", {
  skip_if(!reticulate::py_module_available("gpytorch"))
  
  task = tsk("mtcars")
  
  learner = lrn("regr.gpytorch", lr = 0.05, n_iter = 100)
  learner$train(task)
  pred = learner$predict(task)
  expect_prediction_regr(pred)
})

test_that("regr.gpytorch device parameter", {
  skip_if(!reticulate::py_module_available("gpytorch"))
  
  task = tsk("mtcars")
  
  learner = lrn("regr.gpytorch", device = "cpu", n_iter = 20)
  learner$train(task)
  pred = learner$predict(task)
  expect_prediction_regr(pred)
  
  learner = lrn("regr.gpytorch", device = "auto", n_iter = 20)
  learner$train(task)
  pred = learner$predict(task)
  expect_prediction_regr(pred)
})


