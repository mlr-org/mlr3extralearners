skip_if_not_installed("penalized")

test_that("autotest", {
  learner = lrn("surv.penalized")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("unpenalized", {
  task = tsk("rats")
  learner = lrn("surv.penalized", unpenalized = "litter")
  learner$train(task)
  expect_equal(names(learner$model$model@penalized), c("rx", "sexm"))
  expect_equal(names(learner$model$model@unpenalized), "litter")
  expect_prediction_surv(learner$predict(task))
  # unpenalized features have to be in present
  learner = lrn("surv.penalized", unpenalized = "li")
  expect_error(learner$train(task), "values not present in task")
})

test_that("can't get selected features on task with factors", {
  task = tsk("lung")
  learner = lrn("surv.penalized")
  learner$train(task)
  expect_class(learner$model$model, "penfit")
  expect_error(learner$selected_features())
})
