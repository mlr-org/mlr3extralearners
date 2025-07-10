test_that("autotest", {
  with_seed(1, {
    learner = lrn("surv.rfsrc", ntree = 20, importance = "random", na.action = "na.impute")
    expect_learner(learner)
    result = run_autotest(learner, check_replicable = FALSE, N = 100)
    expect_true(result, info = result$error)
  })
})

test_that("importance/selected", {
  with_seed(1, {
    task = tsk("rats")
    learner = lrn("surv.rfsrc", ntree = 20)
    learner$train(task)
    expect_error(learner$importance(), "Set 'importance'")
    expect_error(learner$selected_features(), "Set 'var.used'")

    learner$param_set$values = list(
      var.used = "all.trees", importance = "random"
    )
    learner$train(task)
    expect_numeric(learner$selected_features(), names = "named")
    expect_numeric(learner$importance(), names = "named")
  })
})
