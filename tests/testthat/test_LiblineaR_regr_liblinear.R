install_learners("regr.liblinear")

test_that("autotest", {
  learner = LearnerRegrLiblineaR$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("paramtest: train", {
  learner = lrn("regr.liblinear")
  fun_list = list(LiblineaR::LiblineaR, LiblineaR:::predict.LiblineaR)
  exclude = c(
    "data", # handled by mlr3
    "target", # handled by mlr3
    "epsilon", # overwritten by svr_eps
    "wi", # not used in regression
    "object", # handled internally
    "newx", # handled internally
    "proba", # classif only
    "decisionValues" # classif only
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

