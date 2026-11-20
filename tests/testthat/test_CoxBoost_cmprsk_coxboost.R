skip_if_not_installed("CoxBoost")

task = tsk("pbc")$select(c("age", "bili", "albumin", "copper"))

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("cmprsk.coxboost", stepno = 10)
  expect_learner(learner)
  result = run_autotest(learner, N = 42, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("cmprsk.coxboost supports selected_features() per cause", {
  withr::local_seed(42)
  learner = lrn("cmprsk.coxboost", stepno = 10)
  learner$train(task)

  expect_character(learner$selected_features(at_step = 0), len = 0) # no boosting steps yet
  sf = learner$selected_features()
  sf1 = learner$selected_features(cause = 1) # same as above
  expect_equal(sf, sf1)
  expect_subset(sf1, task$feature_names)
  sf2 = learner$selected_features(cause = 2)
  expect_subset(sf2, task$feature_names)

  expect_error(learner$selected_features(cause = 3), "Invalid cause")
})

test_that("cmprsk.coxboost supports internal cv and custom times", {
  learner = lrn("cmprsk.coxboost", cv = TRUE, maxstepno = 5, K = 3, penalty = 100)
  expect_silent(learner$train(task, row_ids = task$row_ids[1:250]))

  times = c(100, 500, 1300.12345678901234)
  learner$param_set$values$times = times
  prediction = learner$predict(task, row_ids = task$row_ids[251:260])

  # every cause gets the same 3 time points specified above
  expect_identical(prediction$times, list("1" = times, "2" = times))
  expect_identical(
    lapply(prediction$cif, dim),
    list("1" = c(10L, 3L), "2" = c(10L, 3L))
  )
})

test_that("cmprsk.coxboost stores CIFs at cause-specific event times", {
  train_rows = task$row_ids[1:250]
  learner = lrn("cmprsk.coxboost", stepno = 5)
  learner$train(task, row_ids = train_rows)

  prediction = learner$predict(task, row_ids = task$row_ids[251L])
  expected_times = set_names(
    lapply(task$causes, function(cause) {
      task$unique_event_times(rows = train_rows, cause = cause)
    }),
    as.character(task$causes)
  )
  expect_identical(prediction$times, expected_times)
  expect_identical(
    lapply(prediction$cif, dim),
    lapply(times, function(x) c(1L, length(x)))
  )
})

test_that("cmprsk.coxboost rejects optimCoxBoostPenalty without cv", {
  learner = lrn("cmprsk.coxboost", stepno = 10, penalty = "optimCoxBoostPenalty")
  expect_error(learner$train(task, row_ids = task$row_ids[1:250]), "requires `cv = TRUE`")
})
