test_that("paramtest regr.gam train", {
  learner = lrn("regr.gam")
  fun_list = list(mgcv::gam, mgcv::gam.control)
  exclude = c(
    "data", # handled internally
    "weights", # handled internally
    "subset", # handled internally
    "na.action", # handled internally
    "control", # handled via "train" parameters
    "fit", # A model should be fitted
    "discrete", # experimental, should not be modified
    "keepData" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.gam predict", {
  learner = lrn("regr.gam")
  fun = mgcv::predict.gam
  exclude = c(
    "na.action", # handled internally
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "newdata.guaranteed", # handled internally
    "se.fit", # handled internally
    "terms", # not relevant for predict type "se" or "response"
    "exclude", # not relevant for predict type "se" or "response"
    "iterms.type", # not relevant for predict type "se" or "response"
    "keepData" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
