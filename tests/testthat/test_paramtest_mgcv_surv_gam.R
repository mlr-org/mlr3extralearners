skip_if_not_installed("mgcv")

test_that("paramtest surv.gam train", {
  learner = lrn("surv.gam")
  fun_list = list(mgcv::gam, mgcv::gam.control)
  exclude = c(
    "family", # handled internally
    "data", # handled internally
    "weights", # handled internally
    "subset", # handled internally
    "na.action", # handled internally
    "offset", # handled by mlr3
    "control", # handled via "train" parameters
    "fit", # A model should be fitted
    "discrete", # experimental, should not be modified
    "keepData" # no need to keep the data, as the model frame is kept either way
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.gam predict", {
  learner = lrn("surv.gam")
  fun = mgcv::predict.gam
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "se.fit", # handled internally
    "terms", # not relevant
    "exclude", # not relevant
    "newdata.guaranteed", # handled internally
    "na.action", # handled internally
    "iterms.type" # not relevant
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
