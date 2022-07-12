test_that("paramtest surv.blackboost train", {
  learner = lrn("surv.blackboost")
  fun_list = list(mboost::blackboost, mboost::boost_control, partykit::ctree_control)
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "tree_controls", # handled internally
    "custom.family", # pass a custom family (the rest is parametrized by characters)
    "pargs", # Args for families are implemented explicitly
    "maxvar", # not implemented by the author
    "numsurrogate", # for backward compatability with party
    "applyfun", # parallelization
    "cores", # parallelization
    "saveinfo", # parallelization
    "update", # parallelization
    "splitflavour", # feature may change
    # ths
    "nuirange",
    "maxpts", # mvtnorm::GenzBretz
    "abseps", # mvtnorm::GenzBretz
    "releps", # mvtnorm::GenzBretz
    "sigma", # mboost.:Cindex
    "ipcw" # mboost::Cindex
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)

})

# no predict time parameters
