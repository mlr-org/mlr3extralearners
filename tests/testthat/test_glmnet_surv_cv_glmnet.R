skip_on_os("solaris") # glmnet not working properly on solaris
skip_if_not_installed("glmnet")

set.seed(42)
task = tsk("rats")$select(c("litter", "rx"))
part = partition(task, ratio = 0.9)
train_rows = part$train
test_rows  = part$test
unique_times = task$unique_times(rows = train_rows)

test_that("autotest", {
  learner = mlr3::lrn("surv.cv_glmnet")
  expect_learner(learner)

  skip_on_os("solaris")
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
  learner = lrn("surv.cv_glmnet", s = 0.003)
  p = learner$train(task, train_rows)$predict(task, test_rows)
  surv2 = p$distr[1]$survival(unique_times)
  expect_false(all(surv1 == surv2))
})

test_that("offset, newoffset and weight parameters", {
  offs = rep(0.1, length(part$train))
  newoffs = rep(0.15, length(part$test))
  l1 = lrn("surv.cv_glmnet", offset = offs)
  l2 = lrn("surv.cv_glmnet", newoffset = newoffs)
  l3 = lrn("surv.cv_glmnet", offset = offs, newoffset = newoffs)

  # newoffset is needed
  expect_error(l1$train(task, part$train)$predict(task, part$test), "newoffset")
  # offset is not necessary
  expect_silent(l2$train(task, part$train)$predict(task, part$test))
  # having both works
  expect_silent(l3$train(task, part$train)$predict(task, part$test))

  # training weights are kept for prediction
  learner = lrn("surv.cv_glmnet")
  task2 = task$clone()
  task2$col_roles$weight = "litter"
  expect_silent(learner$train(task2, train_rows)$predict(task2, test_rows))
  expect_equal(learner$model$weights, task2$weights$weight[train_rows])
})
