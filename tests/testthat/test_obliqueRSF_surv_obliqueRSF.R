install_learners("surv.obliqueRSF")
load_tests("surv.obliqueRSF")

test_that("autotest", {
  learner = lrn("surv.obliqueRSF", compute_oob_predictions = TRUE)
  expect_learner(learner)
  result = run_autotest(learner, exclude = "single", N = 30, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("surv.obliqueRSF_train", {
  learner = lrn("surv.obliqueRSF")
  fun_list = list(obliqueRSF::ORSF, obliqueRSF:::predict.orsf)
  exclude = c(
    "data", # handled internally
    "time", # handled internally
    "status", # handled internally
    "features", # handled internally
    "newdata", # handled internally
    "times", # all times required for distr
    "object", # handled internally
    "mtry_ratio" # manually added as an alternative to "mtry"
  )
  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

