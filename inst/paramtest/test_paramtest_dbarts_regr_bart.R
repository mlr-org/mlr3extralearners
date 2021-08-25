library(mlr3extralearners)
mlr3extralearners::install_learners("regr.bart")

test_that("regr.bart", {
  learner = lrn("regr.bart")
  fun = dbarts::bart
  exclude = c(
    "x.train", # handled internally
    "y.train", # handled internally
    "x.test", # handled internally
    "binaryOffset", # classification only
    "weights", # handled by task
    "nthread", # handled by future
    "nchain", # unused
    "combinechains" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

# example for checking a predict function of a learner
test_that("regr.bart_predict", {
  learner = lrn("regr.bart")
  fun = dbarts:::predict.bart
  exclude = c(
    "newdata", # handled internally
    "object", # handled internally
    "type", # handled internally
    "offset", # classification only
    "combineChains" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
