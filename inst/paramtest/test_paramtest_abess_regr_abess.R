library(mlr3extralearners)
if (!requireNamespace("abess", quietly = TRUE)) {
  library(devtools)
  devtools::install_github(repo = "abess-team/abess", subdir = "R-package")
}
mlr3extralearners::install_learners("regr.abess")

test_that("regr.abess train", {
  learner = lrn("regr.abess")
  fun = abess::abess
  exclude = c(
    "formula",# handled internally
    "model", # handled internally
    "data", # handled internally
    "weights", # handled by task
    "subset", # handled by task
    "na.action", # handled internally
    "method", # handled internally
    "x", # handled internally
    "y", # handled internally
    "parms", # handled internally
    "control", # handled internally
    "cost" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("regr.abess predict", {
  learner = lrn("regr.abess")
  fun = abess:::predict.abess
  exclude = c(
    "object", # handled internally
    "newx", # handled internally
    "type", # handled internally
    "na.action" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
