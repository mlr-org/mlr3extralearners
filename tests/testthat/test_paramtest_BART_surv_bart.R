skip_if_not_installed("mlr3proba")
skip_if_not_installed("BART")

test_that("paramtest surv.bart train", {
  learner = lrn("surv.bart")
  fun_list = list(BART::mc.surv.bart)
  exclude = c(
    "x.train", # handled internally
    "y.train", # handled internally
    "times", # handled internally
    "delta", # handled internally
    "x.test", # not used
    "xinfo",  # not used
    "tau.num", # not used, automatically calculated from `type` and `ntype`
    "id", # only for `surv.bart`
    "importance" # added to choose the type of importance
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramset surv.bart predict", {
  learner = lrn("surv.bart")
  fun_list = list(BART:::predict.survbart, BART::surv.pre.bart) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "openmp", # handled internally
    "times", # handled internally, used in `surv.pre.bart`
    "delta", # handled internally, used in `surv.pre.bart`
    "x.train", # handled internally, used in `surv.pre.bart`
    "x.test", # handled internally, used in `surv.pre.bart`
    "nice", # handled internally
    "quiet", # added to suppress print messages
    "which.curve" # added to choose 3rd dimension (posterior draw) for crank calculation
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
