test_that("regr.tabnet works", {
  learner = lrn("regr.tabnet", device = "cpu")
  task = tsk("boston_housing")
  learner$train(task)
  learner$predict(task)
})
