library(mlr3extralearners)
install_learners("classif.bart")

test_that("classif.bart", {
  learner = lrn("classif.bart")
  fun = dbarts::bart
  exclude = c(
    "x.train", # handled internally
    "y.train", # handled internally
    "x.test", # handled internally
    "weights", # handled by task
    "nthread", # handled by future
    "nchain", # unused
    "combinechains", # unused
    "sigest", # regr only
    "sigdf", # regr only
    "sigquant", # regr only
    "keeptrees" # must be TRUE for prediction
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

# example for checking a predict function of a learner
test_that("classif.bart_predict", {
  learner = lrn("classif.bart")
  fun = dbarts:::predict.bart
  exclude = c(
    "newdata", # handled internally
    "object", # handled internally
    "type", # handled internally
    "combineChains" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
