test_that("paramtest surv.cforest train", {
  learner = lrn("surv.cforest")
  fun_list = list(partykit::cforest, partykit::ctree_control)
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "weights", # handled in mlr3
    "subset", # handled in mlr3
    "strata", # FIXME: handled in mlr3?
    "na.action", # handled in mlr3
    "control", # handled in partykit::ctree_control
    "ytrafo", # handled in mlr3pipelines
    "perturb", # handled separately
    "mtry", # passed directly
    "applyfun", # passed directly
    "cores", # passed directly
    "replace", # perturb = list(replace, fraction)
    "fraction", # perturb = list(replace, fraction)
    "object", # handled internally
    "mtryratio", # added as alternative to mtry
    "newdata", # handled internally
    "type", # handled by mlr3
    "FUN", # summary statistics are handled by mlr3 with measures
    "pargs", # maxapts, abseps and releps are passed directly
    "maxpts",
    "abseps",
    "releps"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest surv.cforest predict", {
  learner = lrn("surv.cforest")
  fun_list = list(partykit::predict.cforest)
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled by mlr3
    "FUN" # summary statistics are handled by mlr3 with measures
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
