library(mlr3extralearners)
install_learners("classif.cforest")

test_that("classif.cforest", {
  learner = lrn("classif.cforest")
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
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("classif.cforest_control", {
  learner = lrn("classif.cforest")
  fun = partykit::ctree_control
  exclude = c(
    "mtry", # passed directly
    "applyfun", # passed directly
    "cores" # passed directly
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
