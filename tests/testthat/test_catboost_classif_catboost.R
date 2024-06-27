test_that("autotest", {
  learner = lrn("classif.catboost", iterations = 10)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("early stopping works", {
  learner = lrn("classif.catboost", iterations = 1000, eval_metric = "Logloss", early_stopping_rounds = 10)
  learner$validate = 0.2
  task = tsk("pima")

  learner$train(task)

  expect_list(learner$internal_tuned_values)
  expect_number(learner$internal_tuned_values$iterations)
})
