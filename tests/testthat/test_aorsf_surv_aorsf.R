skip_if_not_installed("aorsf")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("surv.aorsf", n_tree = 20, na_action = "impute_meanmode")
  expect_learner(learner)
  result = run_autotest(learner, N = 30, exclude = "utf8_feature_names",
                        check_replicable = FALSE)
  expect_true(result)
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
