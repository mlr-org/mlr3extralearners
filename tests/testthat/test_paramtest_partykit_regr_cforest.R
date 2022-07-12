test_that("paramtest regr.cforest train", {
  learner = lrn("regr.cforest")
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
    "replace", # goes into perturb
    "fraction", # goes into perturb
    "mtryratio", # added as alternative to mtry
    # Parameters from varimp (needs a fix in partykit --> see learner)
    "nperm",
    "risk",
    "conditional",
    "threshold"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.cforest predict", {
  learner = lrn("regr.cforest")
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
