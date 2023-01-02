test_that("autotest", {
  set.seed(1)
  learner = lrn("classif.priority_lasso",
                blocks = list(bp1=1:4, bp2=5:9, bp3=10:28, bp4=29:1028),
                type.measure='class')
  expect_learner(learner)
  expect_error(learner$selected_features(), "No model stored")

  task = as_task_classif(prioritylasso::pl_data,
                         target="pl_out")
  learner$train(task)$selected_features()
  learner$predict(task)
})
