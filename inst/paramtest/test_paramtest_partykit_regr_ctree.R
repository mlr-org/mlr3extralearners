library(mlr3extralearners)
mlr3extralearners::install_learners("regr.ctree")

test_that("regr.ctree", {
  learner = lrn("regr.ctree")
  fun = partykit::ctree
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "subset", # handled in mlr3
    "weights", # handled in mlr3
    "na.action", # handled in mlr3
    "control", # handled in partykit::ctree_control
    "ytrafo", # handled in mlr3pipelines
    "converged" # not to be used by the user
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("Missing parameters:",
  paste0("- '", ParamTest$missing, "'", collapse = "")))
})

test_that("regr.ctree_control", {
  learner = lrn("regr.ctree")
  fun = partykit::ctree_control
  exclude = c(
    "pargs" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("Missing parameters:",
                                       paste0("- '", ParamTest$missing, "'", collapse = "")))
})

test_that("GenzBretz", {
  learner = lrn("regr.ctree")
  fun = mvtnorm::GenzBretz
  exclude = c(
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("Missing parameters:",
                                       paste0("- '", ParamTest$missing, "'", collapse = "")))
})
