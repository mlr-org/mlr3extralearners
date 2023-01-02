test_that("autotest", {
  set.seed(1)
  learner = lrn("regr.priority_lasso",
                blocks = list(bp1=1:75, bp2=76:200, bp3=201:500))
  expect_learner(learner)
  expect_error(learner$selected_features(), "No model stored")

  task = as_task_regr(x=data.frame(matrix(rnorm(50*500),50,500),
                                   y=rnorm(50)), target="y")
  learner$train(task)$selected_features()
  learner$predict(task)
})
