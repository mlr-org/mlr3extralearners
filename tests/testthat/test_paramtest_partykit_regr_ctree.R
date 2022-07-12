test_that("paramtest regr.ctree train", {
  learner = lrn("regr.ctree")
  fun_list = list(partykit::ctree, partykit::ctree_control, mvtnorm::GenzBretz)
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "subset", # handled in mlr3
    "weights", # handled in mlr3
    "na.action", # handled in mlr3
    "control", # handled in partykit::ctree_control
    "ytrafo", # handled in mlr3pipelines
    "converged", # not to be used by the user
    "pargs", # control parameters (GenzBretz()) are passed explicitly :
    "maxpts", # pargs param
    "releps", # pargs param
    "abseps"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.ctree", {
  learner = lrn("regr.ctree")
  fun_list = list(partykit::predict.party)
  exclude = c(
    "perm", # used for variable importance (permuting the data)
    "newdata", # handled by mlr3
    "object" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
