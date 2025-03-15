library(testthat)
library(mlr3)
library(mlr3proba)

test_that("surv.finegray_coxph trains and predicts", {
  task = TaskSurv$new(
    id = "test",
    backend = data.frame(
      time = c(1, 2, 3, 4, 5),
      event = factor(c(0, 1, 2, 0, 1), levels = c(0, 1, 2), labels = c("censored", "event1", "event2")),
      x1 = c(1, 2, 3, 4, 5)
    ),
    time = "time",
    event = "event",
    type = "mstate"
  )

  learner = lrn("surv.finegray_coxph")
  expect_learner(learner)

  # Train
  learner$train(task)
  expect_true(!is.null(learner$model))

  # Predict
  p = learner$predict(task)
  expect_s3_class(p, "PredictionSurv")
  expect_numeric(p$crank, len = 5)
  expect_numeric(p$lp, len = 5)
  expect_s3_class(p$distr, "Distribution")  # Check for Distribution, not matrix
  expect_true(all(c("crank", "lp", "distr") %in% names(p)))  # Check names are present
})

test_that("surv.finegray_coxph handles weights", {
  task = TaskSurv$new(
    id = "test_weights",
    backend = data.frame(
      time = c(1, 2, 3, 4, 5),
      event = factor(c(0, 1, 2, 0, 1), levels = c(0, 1, 2), labels = c("censored", "event1", "event2")),
      x1 = c(1, 2, 3, 4, 5),
      weight = c(1, 2, 1, 2, 1)  # Add weights to backend
    ),
    time = "time",
    event = "event",
    type = "mstate"
  )
  task$set_col_roles("weight", roles = "weight")  # Set weight role

  learner = lrn("surv.finegray_coxph")
  learner$train(task)
  p = learner$predict(task)
  expect_s3_class(p, "PredictionSurv")
  expect_numeric(p$crank, len = 5)
  expect_numeric(p$lp, len = 5)
  expect_s3_class(p$distr, "Distribution")
  expect_true(all(c("crank", "lp", "distr") %in% names(p)))
})

test_that("surv.finegray_coxph with mstate task", {
  data = data.frame(
    time = c(1, 2, 3, 4, 5),
    status = factor(c(0, 1, 2, 0, 1), levels = c(0, 1, 2), labels = c("censored", "event1", "event2")),
    x = c(1, 2, 3, 4, 5)
  )
  task = TaskSurv$new("mstate_test", backend = data, time = "time", event = "status", type = "mstate")
  learner = lrn("surv.finegray_coxph")
  learner$train(task)
  p = learner$predict(task)
  expect_s3_class(p, "PredictionSurv")
  expect_numeric(p$crank, len = 5)
  expect_numeric(p$lp, len = 5)
  expect_s3_class(p$distr, "Distribution")
  expect_true(all(c("crank", "lp", "distr") %in% names(p)))
})
