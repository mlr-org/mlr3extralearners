library(mlr3extralearners)
mlr3extralearners::install_learners("surv.cforest")

test_that("surv.cforest", {
  learner = lrn("surv.cforest")
  fun = partykit::cforest
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "weights", # handled in mlr3
    "subset", # handled in mlr3
    "strata", # FIXME: handled in mlr3?
    "na.action", # handled in mlr3
    "control", # handled in partykit::ctree_control
    "ytrafo", # handled in mlr3pipelines
    "perturb" # handled separately
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:", paste0("- '", ParamTest$missing, "'", collapse = "")))
})

test_that("surv.cforest_control", {
  learner = lrn("surv.cforest")
  fun = partykit::ctree_control
  exclude = c(
    "mtry", # passed directly
    "applyfun", # passed directly
    "cores", # passed directly
    "pargs" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "")))
})

test_that("GenzBretz", {
  learner = lrn("surv.cforest")
  fun = mvtnorm::GenzBretz
  exclude = c(
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("Missing parameters:",
                                       paste0("- '", ParamTest$missing, "'", collapse = "")))
})
