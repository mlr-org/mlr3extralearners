library(mlr3extralearners)
install_learners("regr.IBk")

test_that("regr.IBk", {
  learner = lrn("regr.IBk")
  fun = RWeka::IBk
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "control" # handled to RWeka::Weka_Control
  )
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("Weka_control IBk", {
  learner = lrn("regr.IBk")
  fun = RWeka::Weka_control
  exclude = c(
    character(0L)
  )
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("predict regr.IBk", {
  learner = lrn("regr.IBk")
  fun = RWeka:::predict.Weka_classifier
  exclude = c(
    "object", # handled via mlr3
    "newdata", # handled via mlr3
    "type" # handled via mlr3
  )
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "‚")))
})
