library(mlr3extralearners)

test_that("classif.liblinearl2l1svc", {
  learner = lrn("classif.liblinearl2l1svc")
  fun = LiblineaR::LiblineaR
  exclude = c(
    "data", # handled by mlr3
    "target", # handled by mlr3
    "type", # determined by the chosen learner
    "svr_eps" # only for regression
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
