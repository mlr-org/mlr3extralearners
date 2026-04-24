skip_if_not_installed("reticulate")

test_that("regr.gpytorch basic functionality", {
  skip_if(!reticulate::py_module_available("gpytorch"))
  
  learner = lrn("regr.gpytorch", n_iter = 30)
  task = tsk("mtcars")
  
  learner$train(task)
  pred = learner$predict(task)
  
  expect_prediction_regr(pred)
  expect_true(all(!is.na(pred$response)))
})

test_that("regr.gpytorch learns non-trivial patterns", {
  skip_if(!reticulate::py_module_available("gpytorch"))
  
  learner_gp = lrn("regr.gpytorch", n_iter = 30)
  learner_baseline = lrn("regr.featureless")
  task = tsk("mtcars")
  
  learner_gp$train(task)
  learner_baseline$train(task)
  
  pred_gp = learner_gp$predict(task)
  pred_baseline = learner_baseline$predict(task)
  
  mse_gp = pred_gp$score(msr("regr.mse"))
  mse_baseline = pred_baseline$score(msr("regr.mse"))
  
  expect_true(mse_gp < mse_baseline)
})

test_that("regr.gpytorch standard error prediction", {
  skip_if(!reticulate::py_module_available("gpytorch"))
  
  learner = lrn("regr.gpytorch", n_iter = 30)
  learner$predict_type = "se"
  task = tsk("mtcars")
  
  learner$train(task)
  pred = learner$predict(task)
  
  expect_prediction_regr(pred)
  expect_true("se" %in% names(pred))
  expect_true(all(pred$se > 0))
})

