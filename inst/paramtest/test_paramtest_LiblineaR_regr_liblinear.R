library(mlr3extralearners)
install_learners("regr.liblinear")

test_that("regr.liblinear", {
  learner = lrn("regr.liblinear")
  fun = LiblineaR::LiblineaR
  exclude = c(
    "data", # handled by mlr3
    "target", # handled by mlr3
    "epsilon", # overwritten by svr_eps
    "wi" # not used in regression
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
