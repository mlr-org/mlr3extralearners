library(mlr3extralearners)

test_that("regr.mob", {
  learner = lrn("regr.mob")
  fun = partykit::mob
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "subset", # handled in mlr3
    "na.action", # handled in mlr3
    "weights", # handled in mlr3
    "control" # handled in partykit::mob_control
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("regr.mob_control", {
  learner = lrn("regr.mob")
  fun = partykit::mob_control
  exclude = c(
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
