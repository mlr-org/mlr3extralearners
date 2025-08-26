skip_on_os("solaris") # glmnet not working properly on solaris
skip_if_not_installed("glmnet")

withr::local_seed(42)
task = tsk("rats")$select(c("litter", "rx"))
part = partition(task, ratio = 0.9)
train_rows = part$train
test_rows  = part$test
unique_times = task$unique_times(rows = train_rows)

test_that("autotest", {
  learner = lrn("surv.glmnet", lambda = 0.1)
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("selected_features", {
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

test_that("distr prediction works", {
  learner = lrn("surv.glmnet", lambda = 0.03)
  p = learner$train(task, train_rows)$predict(task, test_rows)

  # check model
  expect_class(learner$model$model, "coxnet")

  # check predictions
  expect_class(p$lp, "numeric")
  expect_equal(p$lp, p$crank)
  expect_matrix(p$data$distr, nrows = length(test_rows), ncols = length(unique_times))

  surv1 = p$distr[1]$survival(unique_times) # survival of 1st rat

  # change survival calculation, prediction distr changes
  learner = lrn("surv.glmnet", lambda = 0.03, stype = 1)
  p = learner$train(task, train_rows)$predict(task, test_rows)
  surv2 = p$distr[1]$survival(unique_times)
  expect_false(all(surv1 == surv2))
})

test_that("offset and weight parameters", {
  task$cbind(data.table(new_col = runif(300)))
  task$set_col_roles(cols = "new_col", roles = "offset")
  l = lrn("surv.glmnet", lambda = 0.03)

  p = l$train(task, train_rows)$predict(task, test_rows)
  # offset was used
  expect_equal(l$model$offset, task$offset$offset[train_rows])
  expect_true(l$model$model$offset)
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
