library(testthat)
library(mlr3)
library(mlr3spatiotempcv)

test_that("testing regr.grf", {
    set.seed(1)
  
    # California Housing dataset
    task_data <- mlr3::tsk("california_housing")$data()
    task_data <- task_data[complete.cases(task_data), ][1:100,]
    task_data$ocean_proximity <- NULL

    # reg task
    task <- as_task_regr_st(task_data, target = "median_house_value", coordinate_names = c("longitude", "latitude"))

    # init rgf learner
    learner <- lrn("regr.grf", bw = 20, ntree = 10)

    learner$train(task)
    pred <- learner$predict(task)

    # validate predict output
    expect_true(is.numeric(pred$response))
    expect_equal(length(pred$response), nrow(task_data))

    # test variable importance
    imp <- learner$importance()
    expect_true(is.numeric(imp))
    expect_true(!any(is.na(imp)))
    expect_named(imp)

    # test error OOB retrieval
    oob <- learner$oob_error()
    expect_true(is.numeric(oob))
    expect_length(oob, 1)
})