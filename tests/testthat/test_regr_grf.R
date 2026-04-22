library(testthat)
library(mlr3)
library(mlr3spatiotempcv)
library(mlr3learners.spatialML)

test_that("autotest", {
  learner = lrn("regr.grf", bw = 20)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.grf importance and prediction", {
  set.seed(1)

  # California Housing dataset
  task_data <- mlr3::tsk("california_housing")$data()
  task_data <- task_data[complete.cases(task_data), ][1:100, ]
  task_data$ocean_proximity <- NULL

  # reg task
  task <- as_task_regr_st(task_data, target = "median_house_value", coordinate_names = c("longitude", "latitude"))

  # init grf learner
  learner <- lrn("regr.grf", bw = 20, ntree = 10)
  learner$train(task)
  pred <- learner$predict(task)

  # validate predict output
  expect_is(pred$response, "numeric")
  expect_equal(length(pred$response), nrow(task_data))

  # test variable importance
  imp <- learner$importance()
  expect_is(imp, "numeric")
  expect_true(!any(is.na(imp)))
  expect_named(imp)

  # test OOB error retrieval
  oob <- learner$oob_error()
  expect_is(oob, "numeric")
  expect_length(oob, 1)
})
