install_learners("surv.penalized")

test_that("autotest", {
  learner = LearnerSurvPenalized$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("unpenalized", {
  task = tsk("rats")
  learner = lrn("surv.penalized", unpenalized = c("litter"))
  learner$train(task)
  expect_equal(names(learner$model@penalized), c("rx", "sexm"))
  expect_equal(names(learner$model@unpenalized), c("litter"))
  expect_prediction_surv(learner$predict(task))
})
