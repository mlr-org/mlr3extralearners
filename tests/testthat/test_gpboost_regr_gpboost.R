skip_if_not_installed("gpboost")

test_that("autotest", {
  learner = lrn("regr.gpboost", nrounds = 20L, min_data_in_leaf = 5L)
  expect_learner(learner)
  # "se" requires a random effects model, which the generated tasks do not have
  result = run_autotest(learner, predict_types = "response")
  expect_true(result, info = result$error)
})

test_that("grouped random effects", {
  task = tsk("mtcars")
  learner = lrn("regr.gpboost", nrounds = 20L, group_data_cols = "cyl", predict_type = "se")
  learner$train(task)
  pred = learner$predict(task)
  expect_numeric(pred$response, len = task$nrow, any.missing = FALSE)
  expect_numeric(pred$se, len = task$nrow, lower = 0, any.missing = FALSE)
  expect_names(names(learner$importance()), permutation.of = task$feature_names)
  expect_equal(learner$importance()[["cyl"]], 0)
})

test_that("grouped random effects with factor columns", {
  task = tsk("mtcars")
  data = task$data()
  data$cyl = factor(data$cyl)
  data$gear = factor(data$gear)
  task = as_task_regr(data, target = "mpg")
  learner = lrn("regr.gpboost", nrounds = 20L, group_data_cols = c("cyl", "gear"), matrix_inversion_method = "cholesky")
  learner$train(task)
  pred = learner$predict(task)
  expect_numeric(pred$response, len = task$nrow, any.missing = FALSE)
})

test_that("gaussian process on coordinates", {
  task = tsk("mtcars")
  learner = lrn("regr.gpboost", nrounds = 20L, gp_coords_cols = c("wt", "hp"), cov_function = "exponential",
    predict_type = "se")
  learner$train(task)
  pred = learner$predict(task)
  expect_numeric(pred$response, len = task$nrow, any.missing = FALSE)
  expect_numeric(pred$se, len = task$nrow, lower = 0, any.missing = FALSE)
})

test_that("nrounds is used", {
  task = tsk("mtcars")
  learner = lrn("regr.gpboost", nrounds = 7L, min_data_in_leaf = 5L)
  learner$train(task)
  expect_equal(learner$model$current_iter(), 7L)
})

test_that("se requires a random effects model", {
  task = tsk("mtcars")
  learner = lrn("regr.gpboost", nrounds = 5L, predict_type = "se")
  learner$train(task)
  expect_error(learner$predict(task), "random effects")
})

test_that("random effect columns are checked", {
  task = tsk("mtcars")
  expect_error(lrn("regr.gpboost", group_data_cols = "foo")$train(task), "not features")

  data = task$data()
  data$cyl = factor(data$cyl)
  task = as_task_regr(data, target = "mpg")
  expect_error(lrn("regr.gpboost", gp_coords_cols = "cyl")$train(task), "numeric")
})

test_that("marshaling", {
  task = tsk("mtcars")
  learner = lrn("regr.gpboost", nrounds = 5L, group_data_cols = "cyl", predict_type = "se")
  learner$train(task)
  pred = learner$predict(task)
  learner$marshal()
  expect_true(learner$marshaled)
  expect_class(learner$model, "gpb.Booster_marshaled")
  learner$unmarshal()
  expect_false(learner$marshaled)
  expect_equal(learner$predict(task)$se, pred$se)
})

test_that("weights", {
  task = tsk("mtcars")
  data = task$data()
  data$w = runif(nrow(data))
  task = as_task_regr(data, target = "mpg")
  task$set_col_roles("w", roles = "weights_learner")

  learner = lrn("regr.gpboost", nrounds = 5L, min_data_in_leaf = 5L)
  learner$train(task)
  expect_prediction(learner$predict(task))

  learner = lrn("regr.gpboost", nrounds = 5L, group_data_cols = "cyl")
  learner$train(task)
  expect_prediction(learner$predict(task))
})
