skip_if_not_installed("CoxBoost")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("cmprsk.coxboost", stepno = 10)
  expect_learner(learner)
  result = run_autotest(learner, N = 42, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("cmprsk.coxboost supports selected_features() per cause", {
  withr::local_seed(42)
  task = tsk("pbc")
  feats = c("age", "bili", "albumin", "copper")
  task$select(feats)

  learner = lrn("cmprsk.coxboost", stepno = 10)
  learner$train(task)

  expect_character(learner$selected_features(at_step = 0), len = 0) # no boosting steps yet
  sf = learner$selected_features()
  sf1 = learner$selected_features(cause = 1) # same as above
  expect_equal(sf, sf1)
  expect_subset(sf1, feats)
  sf2 = learner$selected_features(cause = 2)
  expect_subset(sf2, feats)

  expect_error(learner$selected_features(cause = 3), "Invalid cause")
})

test_that("cmprsk.coxboost supports internal cv and custom times", {
  task = tsk("pbc")
  task$select(c("age", "bili", "albumin", "copper"))

  learner = lrn("cmprsk.coxboost", cv = TRUE, maxstepno = 5, K = 3, penalty = 100)
  learner$train(task, row_ids = task$row_ids[1:250])

  learner$param_set$values$times = c(100, 200, 300)
  prediction = learner$predict(task, row_ids = task$row_ids[251:260])

  # only 3 times should be predicted
  expect_true(all(vapply(prediction$cif, ncol, integer(1)) == 3L))
  expect_equal(colnames(prediction$cif[[1L]]), c("100", "200", "300"))
})

test_that("cmprsk.coxboost rejects optimCoxBoostPenalty without cv", {
  task = tsk("pbc")
  task$select(c("age", "bili", "albumin", "copper"))

  learner = lrn("cmprsk.coxboost", stepno = 10, penalty = "optimCoxBoostPenalty")
  expect_error(learner$train(task, row_ids = task$row_ids[1:250]), "requires `cv = TRUE`")
})

