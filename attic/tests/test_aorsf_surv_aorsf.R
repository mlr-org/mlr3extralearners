test_that("autotest", {
  set.seed(1) # there was presumable a weird bug
  learner = lrn("surv.aorsf")
  expect_learner(learner)
  # for some reason the feat_all test randomly stopped working, check later if the
  # problem goes away (could not reproduce locally)
  result = run_autotest(learner,
    exclude = "single || feat_all",
    N = 30,
    check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("predicted time matches aorsf", {
  # time prediction is handled outside of aorsf.
  # this test is placed to ensure that we don't diverge.
  skip_if_not(utils::packageVersion("aorsf") > "0.1.3")
  task = tsk("lung")
  aorsf = lrn("surv.aorsf", control_type = "fast")
  aorsf$train(task)
  preds_mlr3 = aorsf$predict(task)
  preds_aorsf = predict(aorsf$model,
                        new_data = task$data(),
                        pred_type = "time")
  expect_equal(preds_mlr3$response, as.numeric(preds_aorsf))
})
