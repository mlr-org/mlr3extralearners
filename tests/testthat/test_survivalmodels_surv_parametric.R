skip_if_not_installed("survivalmodels")

test_that("autotest aft", {
  withr::local_seed(1)
  learner = lrn("surv.parametric")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

test_that("autotest ph", {
  withr::local_seed(1)
  learner = lrn("surv.parametric", form = "ph")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

test_that("autotest po", {
  withr::local_seed(1)
  learner = lrn("surv.parametric", form = "po")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

task = tsk("lung")

test_that("time points for prediction", {
  learner = lrn("surv.parametric")
  learner$train(task)
  p = learner$predict(task)
  times = as.integer(colnames(p$data$distr))
  expect_equal(times, task$unique_times()) # unique train time points are used

  # use many more time points than the ones in the train set
  learner$param_set$set_values(.values = list(ntime = 9999))
  learner$train(task)
  p = learner$predict(task)
  times = as.integer(colnames(p$data$distr))
  expect_equal(times, task$unique_times()) # all unique train time points are still used

  learner$param_set$set_values(.values = list(ntime = 50))
  p = learner$train(task)$predict(task)
  times = as.integer(colnames(p$data$distr))
  # min and max times are retained after coersion
  expect_equal(min(times), min(task$unique_times()))
  expect_equal(max(times), max(task$unique_times()))
  expect_equal(length(times), 50)
})

test_that("missing", {
  learner = lrn("surv.parametric")
  learner$train(task)
  expect_error(learner$predict(lung_missings))
})

test_that("'form' affects survival prediction", {
  # aft
  learner = lrn("surv.parametric", form = "aft")
  learner$train(task)
  p = learner$predict(task)
  expect_true(inherits(p$distr, "Matdist"))
  surv_aft = p$distr$survival(task$unique_times())
  expect_matrix(surv_aft, nrows = length(task$unique_times()), ncols = task$nrow,
                any.missing = FALSE) # [times x obs]

  # tobit
  learner = lrn("surv.parametric", form = "tobit")
  learner$train(task)
  p = learner$predict(task)
  expect_true(inherits(p$distr, "Matdist"))
  surv_tobit = p$distr$survival(task$unique_times())
  expect_matrix(surv_tobit, nrows = length(task$unique_times()), ncols = task$nrow,
                any.missing = FALSE) # [times x obs]

  # ph
  learner = lrn("surv.parametric", form = "ph")
  learner$train(task)
  p = learner$predict(task)
  expect_true(inherits(p$distr, "Matdist"))
  surv_ph = p$distr$survival(task$unique_times())
  expect_matrix(surv_ph, nrows = length(task$unique_times()), ncols = task$nrow,
                any.missing = FALSE) # [times x obs]

  # po
  learner = lrn("surv.parametric", form = "po")
  learner$train(task)
  p = learner$predict(task)
  expect_true(inherits(p$distr, "Matdist"))
  surv_po = p$distr$survival(task$unique_times())
  expect_matrix(surv_po, nrows = length(task$unique_times()), ncols = task$nrow,
                any.missing = FALSE) # [times x obs]

  # predicted survival matrices are different
  assert_true(any(surv_aft != surv_tobit))
  assert_true(any(surv_aft != surv_ph))
  assert_true(any(surv_aft != surv_po))
  assert_true(any(surv_tobit != surv_ph))
  assert_true(any(surv_tobit != surv_po))
  assert_true(any(surv_ph != surv_po))
})