library(mlr3extralearners)
install_learners("classif.neuralnet")

test_that("classif.neuralnet train", {
  learner = lrn("classif.neuralnet")
  fun = neuralnet::neuralnet
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "linear.output", # hast to be false for every classification tasks
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

test_that("classif.neuralnet predict", {
  learner = lrn("classif.neuralnet")
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
