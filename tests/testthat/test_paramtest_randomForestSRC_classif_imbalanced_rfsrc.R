test_that("paramtest classif.imbalanced_rfsrc train", {
  learner = lrn("classif.imbalanced_rfsrc")
  fun_list = list(randomForestSRC::imbalanced)
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "perf.type", # scoring is done with measure
    # all other parameters are ones inherited from rfsrc
    "mtry",
    "mtry.ratio",
    "nodesize",
    "nodedepth",
    "splitrule",
    "nsplit",
    "importance",
    "bootstrap",
    "samptype",
    "samp",
    "membership",
    "sampsize",
    "sampsize.ratio",
    "na.action",
    "nimpute",
    "ntime",
    "cause",
    "proximity",
    "distance",
    "forest.wt",
    "xvar.wt",
    "split.wt",
    "forest",
    "var.used",
    "split.depth",
    "seed",
    "do.trace",
    "statistics",
    "get.tree",
    "outcome",
    "ptn.count",
    "cores",
    "save.memory"
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})


test_that("paramtest classif.imbalanced_rfsrc predict", {
  learner = lrn("classif.imbalanced_rfsrc")
  fun_list = list(randomForestSRC:::predict.rfsrc) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target", # all classes returned
    "cores", # is set as option(rf.cores)
    "perf.type" # scoring is done with measures
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
