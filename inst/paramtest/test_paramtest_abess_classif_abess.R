#library(mlr3extralearners)
if (!requireNamespace("abess", quietly = TRUE)) {
#  library(devtools)
  devtools::install_github(repo = "abess-team/abess", subdir = "R-package")
}
mlr3extralearners::install_learners("classif.abess")

test_that("classif.abess train", {
  learner = lrn("classif.abess")
  fun = abess::abess
  exclude = c(
    "object", # handled internally
    "data" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "")))
})

test_that("classif.abess predict", {
  learner = lrn("classif.abess")
  fun = abess:::predict # nolint
    exclude = c(
      "object", # handled internally
      "data", # handled internally
      "newdata" # handled internally
    )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "")))
})
