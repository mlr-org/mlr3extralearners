install_learners("surv.obliqueRSF")
load_tests("surv.obliqueRSF")

test_that("autotest", {
  learner = lrn("surv.obliqueRSF", compute_oob_predictions = TRUE)
  expect_learner(learner)
  task = generate_tasks(learner)$feat_all
  learner$train(task)
  p = learner$predict(task)
  print(p$score(msr("surv.cindex")))

  # result = run_autotest(learner, exclude = "single", N = 30, check_replicable = FALSE)
  # expect_true(result, info = result$error)
})
