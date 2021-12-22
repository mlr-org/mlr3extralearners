install_learners("classif.liblinear")

test_that("autotest", {
  learner = LearnerClassifLiblineaR$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.liblinear", {
  learner = lrn("classif.liblinear")
  fun_list = list(LiblineaR::LiblineaR, LiblineaR:::predict.LiblineaR)
  exclude = c(
    "data", # handled by mlr3
    "target", # handled by mlr3
    "svr_eps", # only for regression
    "object", # handled internally
    "newx", # handled internally
    "proba", # handled internally
    "decisionValues" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

