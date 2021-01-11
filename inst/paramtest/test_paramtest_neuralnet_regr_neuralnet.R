library(mlr3extralearners)
install_learners("regr.neuralnet")

test_that("regr.neuralnet train", {
  learner = lrn("regr.neuralnet")
  fun = neuralnet::neuralnet
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "linear.output", # hast to be true for every regression tasks
    "hidden", # vector decomposed in single size parameters and a hyperparameter
    # for the number of layers(see below) in order to acces hyperparameter tuning
    "layernumber" #element of hyperparemter hidden for hyperparameter tunig

  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("regr.neuralnet predict", {
  learner = lrn("regr.neuralnet")
  fun = neuralnet:::predict.nn
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "all.units" #setting all.units to True breaks .predict.
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
