library(mlr3extralearners)
mlr3extralearners::install_learners("surv.rfsrc")

test_that("surv.rfsrc_train", {
  learner = lrn("surv.rfsrc")
  fun = randomForestSRC::rfsrc
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "ytry", # for unsupervised forests only
    "yvar.wt", # not yet implemented
    "case.wt" # handled by task weights
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})


test_that("surv.rfsrc_predict", {
  learner = lrn("surv.rfsrc")
  fun = randomForestSRC:::predict.rfsrc
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "m.target" # for multivariate families only
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
