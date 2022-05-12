test_that("autotest", {
  with_seed(1, {
    learner = mlr_learners$get("surv.ranger")
    expect_learner(learner)
    learner$param_set$values = list(importance = "impurity")
    result = run_autotest(learner, check_replicable = FALSE)
    expect_true(result, info = result$error)
  })
})

test_that("importance", {
  learner = mlr_learners$get("surv.ranger")
  expect_error(learner$importance(), "No model stored")
  expect_error(learner$train(tsk("rats"))$importance(), "No importance stored")
})

test_that("mtry.ratio", {
  task = mlr3::tsk("rats")
  learner = mlr3::lrn("surv.ranger", mtry.ratio = 0.5)

  res = convert_ratio(learner$param_set$values, "mtry", "mtry.ratio", length(task$feature_names))
  expect_equal(
    res$mtry,
    2
  )
  expect_null(res$mtry.ratio)

  learner$train(task)
  expect_equal(
    learner$model$mtry,
    2
  )
})
