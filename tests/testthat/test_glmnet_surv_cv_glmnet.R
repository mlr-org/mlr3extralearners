skip_on_os("solaris") # glmnet not working properly on solaris
skip_if_not_installed("glmnet")

withr::local_seed(42)
task = tsk("rats")$select(c("litter", "rx"))
part = partition(task, ratio = 0.9)
train_rows = part$train
test_rows = part$test
unique_times = task$unique_times(rows = train_rows)

test_that("autotest", {
  learner = lrn("surv.cv_glmnet")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("selected_features", {
  learner = lrn("surv.cv_glmnet")
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

test_that("distr prediction works", {
  learner = lrn("surv.cv_glmnet") # default s = "lambda.1se"
  p = learner$train(task, train_rows)$predict(task, test_rows)

  # check model
  expect_class(learner$model$model, "cv.glmnet")

  # check predictions
  expect_class(p$lp, "numeric")
  expect_equal(p$lp, p$crank)
  expect_matrix(p$data$distr, nrows = length(test_rows), ncols = length(unique_times))

  surv1 = p$distr[1]$survival(unique_times) # survival of 1st rat

  # change s, prediction distr changes
  learner$param_set$set_values(s = 0.003)
  p2 = learner$train(task, train_rows)$predict(task, test_rows)
  surv2 = p2$distr[1]$survival(unique_times)
  expect_false(all(surv1 == surv2))
})

test_that("offset and weight parameters", {
  task$cbind(data.table(new_col = runif(300)))
  task$set_col_roles(cols = "new_col", roles = "offset")
  l = lrn("surv.cv_glmnet")

  p = l$train(task, train_rows)$predict(task, test_rows)
  # offset was used
  expect_equal(l$model$offset, task$offset$offset[train_rows])
  expect_true(l$model$model$glmnet.fit$offset)
  # not using offset during prediction changes lp, distr
  l$param_set$set_values(use_pred_offset = FALSE)
  p2 = l$predict(task, test_rows)
  expect_false(all(p2$lp == p$lp))
  expect_false(all(p2$data$distr == p$data$distr))

  # training weights are kept for prediction
  task$set_col_roles(cols = "new_col", roles = "weights_learner")
  expect_silent(l$train(task, train_rows)$predict(task, test_rows))
  expect_equal(l$model$weights, task$weights_learner$weight[train_rows])
})

test_that("relax = TRUE works", {
  withr::local_seed(42)
  task = tsk("grace")$filter(1:300)

  # by default, fits for gamma in (0, 0.25, 0.5, 0.75, 1)
  learner = lrn("surv.cv_glmnet", relax = TRUE)
  learner$train(task, train_rows)
  assert_class(learner$native_model, "cv.relaxed")
  expect_equal(learner$native_model$relaxed$gamma, c(0, 0.25, 0.5, 0.75, 1))
  # fit custom gamma values
  gammas = seq(0, 1, length.out = 8)
  learner$param_set$set_values(gamma = gammas)
  learner$train(task, train_rows)
  expect_equal(learner$native_model$relaxed$gamma, gammas)

  p1 = learner$predict(task, test_rows)
  # default used gamma for prediction, should not change anything
  learner$param_set$set_values(predict.gamma = "gamma.1se")
  p2 = learner$predict(task, test_rows)
  expect_equal(p1$lp, p2$lp)

  # change gamma, should change predictions
  learner$param_set$set_values(predict.gamma = "gamma.min")
  p3 = learner$predict(task, test_rows)
  expect_false(all(p2$lp == p3$lp))

  # numeric gamma value should also work and give different predictions
  learner$param_set$set_values(predict.gamma = 0.33)
  p4 = learner$predict(task, test_rows)
  expect_false(all(p2$lp == p4$lp))
})
