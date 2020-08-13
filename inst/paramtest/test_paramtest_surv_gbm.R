library(mlr3extralearners)
install_learners("surv.gbm")

test_that("surv.gbm", {
  learner = lrn("surv.gbm")
  fun = gbm::gbm
  exclude = c(
    "formula", # handled by mlr3
    "data", # handled by mlr3
    "weights", # handled by mlr3
    "class.stratify.cv" # handled by mlr3
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
