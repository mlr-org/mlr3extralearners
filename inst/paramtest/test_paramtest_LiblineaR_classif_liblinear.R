library(mlr3extralearners)
install_learners("classif.liblinear")

test_that("classif.liblinear", {
  learner = lrn("classif.liblinear")
  fun = LiblineaR::LiblineaR
  exclude = c(
    "data", # handled by mlr3
    "target", # handled by mlr3
    "svr_eps" # only for regression
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "")))
})

test_that("classif.liblinear predict", {
  learner = lrn("classif.liblinear")
  fun = LiblineaR:::predict.LiblineaR
  exclude = c(
    "object", # handled internally
    "newx", # handled internally
    "proba", # handled internally
    "decisionValues" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "")
  ))
})
