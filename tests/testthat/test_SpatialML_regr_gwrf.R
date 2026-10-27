skip_if_not_installed("SpatialML")
skip_if_not_installed("mlr3spatiotempcv")

test_that("regr.gwrf trains and predicts on a spatial task", {
  data("Income", package = "SpatialML", envir = environment())
  task = mlr3spatiotempcv::as_task_regr_st(Income[1:100, ], target = "Income01", coordinate_names = c("X", "Y"))
  learner = lrn("regr.gwrf", bw = 20, ntree = 10L)
  expect_learner(learner)

  ids = partition(task)
  learner$train(task, row_ids = ids$train)
  prediction = learner$predict(task, row_ids = ids$test)
  expect_prediction(prediction)
  expect_numeric(prediction$response, any.missing = FALSE, len = length(ids$test))

  importance = learner$importance()
  expect_numeric(importance, any.missing = FALSE)
  expect_names(names(importance), permutation.of = task$feature_names)
  expect_number(learner$oob_error())
})

test_that("regr.gwrf requires a spatial task", {
  learner = lrn("regr.gwrf", bw = 20, ntree = 10L)
  expect_error(learner$train(tsk("mtcars")), "spatial task")
})
