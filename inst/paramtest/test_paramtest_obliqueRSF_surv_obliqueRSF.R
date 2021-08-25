library(mlr3extralearners)
mlr3extralearners::install_learners("surv.obliqueRSF")

test_that("surv.obliqueRSF_train", {
  learner = lrn("surv.obliqueRSF")
  fun = obliqueRSF::ORSF
  exclude = c(
    "data", # handled internally
    "time", # handled internally
    "status", # handled internally
    "features" # handled internally
  )
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.obliqueRSF_predict", {
  learner = lrn("surv.obliqueRSF")
  fun = obliqueRSF:::predict.orsf
  exclude = c(
    "newdata", # handled internally
    "times", # all times required for distr
    "object" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
