test_that("autotest", {
  set.seed(1)
  learner = lrn("surv.cv_coxboost", maxstepno = 1, K = 2)
  expect_learner(learner)
  result = run_autotest(learner, N = 10, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("optim", {
  set.seed(1)
  learner = lrn("surv.cv_coxboost",
    penalty = "optimCoxBoostPenalty",
    maxstepno = 1, minstepno = 0, iter.max = 1, K = 2)
  task = tsk("rats")
  task$select(c("litter", "rx"))
  expect_prediction_surv(
    suppressWarnings(learner$train(task, row_ids = 1:50)$predict(task, row_ids = 51:100))
  )
})
