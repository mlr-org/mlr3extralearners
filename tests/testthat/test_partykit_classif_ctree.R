install_learners("classif.ctree")

test_that("autotest", {
  learner = LearnerClassifCTree$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.ctree", {
  learner = lrn("classif.ctree")
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

test_that("classif.ctree_control", {
  learner = lrn("classif.ctree")
  fun = partykit::ctree_control
  exclude = c(
    "pargs" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("Missing parameters:",
                                       paste0("- '", ParamTest$missing, "'", collapse = "")))
})

test_that("GenzBretz", {
  learner = lrn("classif.ctree")
  fun = mvtnorm::GenzBretz
  exclude = c(
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("Missing parameters:",
                                       paste0("- '", ParamTest$missing, "'", collapse = "")))
})
