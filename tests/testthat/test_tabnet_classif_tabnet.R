test_that("classif.tabnet works", {
  learner = lrn("classif.tabnet", device = "cpu")
  task = tsk("iris")
  learner$train(task)
  learner$predict(task)
})
