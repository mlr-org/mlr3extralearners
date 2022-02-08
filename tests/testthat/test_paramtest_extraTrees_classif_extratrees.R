test_that("paramtest classif.extratrees train", {
  learner = lrn("classif.extratrees")
  fun_list = list(extraTrees::extraTrees, extraTrees:::extraTrees.default) # nolint
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "weights", # handled by task
    "object", # handled by mlr3
    "quantile" # only used in regression + currently not supported
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.extratrees predict", {
  learner = lrn("classif.extratrees")
  fun_list = list(extraTrees:::predict.extraTrees) # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "probability", # handledy by mlr3 response_type
    "newtasks", # No multi task learning allowed
    "allValues", # would return the prediction of all Trees, don't want that here
    "quantile" # only used in regression + currently not supported
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
