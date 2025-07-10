test_that("importance/selected", {
  with_seed(1, {
    task = tsk("boston_housing")
    learner = lrn("regr.rfsrc")
    learner$train(task)
    expect_error(learner$importance(), "Set 'importance'")
    expect_error(learner$selected_features(), "Set 'var.used'")
  })
})

test_that("autotest", {
  with_seed(1, {
    learner = lrn("regr.rfsrc", ntree = 20, importance = "random", na.action = "na.impute")
    expect_learner(learner)

    result = run_autotest(learner, exclude = "single")
    expect_true(result, info = result$error)
  })
})
