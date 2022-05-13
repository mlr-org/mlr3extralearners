test_that("paramtest surv.ctree train", {
  learner = lrn("surv.ctree")
  fun_list = list(partykit::ctree, partykit::ctree_control, partykit::predict.party,
    mvtnorm::GenzBretz)
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "subset", # handled in mlr3
    "weights", # handled in mlr3
    "na.action", # handled in mlr3
    "control", # handled in partykit::ctree_control
    "ytrafo", # handled in mlr3pipelines
    "converged", # not to be used by the user
    "perm", # used for variable importance (permuting the data)
    "newdata", # handled by mlr3
    "object", # handled by mlr3
    "pargs", # control parameters (GenzBretz()) are passed explicitly :
    "maxpts", # pargs param
    "releps", # pargs param
    "abseps"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

#
# no predict time parameters
