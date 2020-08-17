library(mlr3extralearners)
install_learners("regr.liblinearl2l2svr")

test_that("regr.liblinearl2l2svr", {
  learner = lrn("regr.liblinearl2l2svr")
  fun = LiblineaR::LiblineaR
  exclude = c(
    "data", # handled by mlr3
    "target", # handled by mlr3
    "type", # determined by the chosen learner
    "epsilon", # overwritten bt svr_eps
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
