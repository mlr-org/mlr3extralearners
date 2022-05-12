skip_on_os("solaris") # glmnet not working properly on solaris
skip_if_not_installed("glmnet")

test_that("autotest", {
  learner = mlr3::lrn("surv.cv_glmnet")
  expect_learner(learner)

  skip_on_os("solaris")
  result = run_autotest(learner, exclude = "feat_single", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("selected_features", {
  task = tsk("gbcs")
  learner = lrn("surv.glmnet")
  learner$train(task)

  expect_equal(
    learner$selected_features(0),
    task$feature_names
  )

  expect_equal(
    learner$selected_features(Inf),
    character()
  )
})
