skip_if_not_installed("evtree")

test_that("classif.evtree train", {
  learner = lrn("classif.evtree")
  fun = evtree::evtree
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "subset", # handled internally
    "na.action", # handled internally
    "formula", # handled internally
    "weights", # handled internally
    "control", # handled internally
    "alpha",  # handled by control function
    "maxdepth",  # handled by control function
    "minbucket",  # handled by control function
    "minsplit",  # handled by control function
    "niterations",  # handled by control function
    "ntrees",  # handled by control function
    "pcrossover",  # handled by control function
    "pmutatemajor",  # handled by control function
    "pmutateminor", # handled by control function
    "pprune",  # handled by control function
    "psplit",  # handled by control function
    "seed"  # handled by control function
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.evtree control", {
  learner = lrn("classif.evtree")
  fun = evtree::evtree.control
  exclude = c(
    "operatorprob", # handled internally
    "pcrossover",  # handled by operatorprob
    "pmutatemajor",  # handled by operatorprob
    "pmutateminor", # handled by operatorprob
    "pprune",  # handled by operatorprob
    "psplit"  # handled by operatorprob
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})
