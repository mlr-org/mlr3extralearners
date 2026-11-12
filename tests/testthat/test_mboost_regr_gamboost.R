skip_if_not_installed("mboost")

test_that("autotest", {
  learner = lrn("regr.gamboost", baselearner = "btree")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

test_that("issue #498", {
  data = tsk("penguins")$data()
  data <- data[complete.cases(data),]
  task = as_task_regr(data, target = "bill_depth")
  learner = lrn("regr.gamboost", baselearner = "btree")
  pred = learner$train(task)$predict(task)
  expect_numeric(pred[["response"]])
})
