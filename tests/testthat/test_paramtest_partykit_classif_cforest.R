test_that("paramtest classif.cforest train", {
  learner = lrn("classif.cforest")
  fun_list = list(partykit::cforest, partykit::ctree_control, partykit::varimp.cforest)

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
    "mtryratio", # added as alternative to mtry
    "OOB",
    "object"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.cforest predict", {
  learner = lrn("classif.cforest")
  fun_list = list(partykit::predict.cforest)
  exclude = c(
    "newdata", # handled internally
    "type", # handled by mlr3
    "object",
    "FUN" # summary statistics are handled by mlr3 with measures
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
