install_learners("classif.extratrees")

test_that("autotest", {
  learner = lrn("classif.extratrees")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.extratrees", {
  learner = lrn("classif.extratrees")
  fun_list = list(extraTrees::extraTrees, extraTrees:::extraTrees.default,
                  extraTrees:::predict.extraTrees)
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "weights", # handled by task
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "probability", # handledy by mlr3 response_type
    "newtasks", # No multi task learning allowed
    "allValues", # would return the prediction of all Trees, don't want that here
    "quantile" # only used in regression + currently not supported
  )

  param_test = run_paramtest(learner, fun_list, exclude)
  print(param_test)
  expect_true(param_test)
})
