test_that("paramtest classif.ksvm train", {
  learner = lrn("classif.ksvm")
  fun_list = list(
    s4_helper(getMethod("ksvm", "matrix"))
  )
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "class.weights", # handled by the task
    "prob.model", # handled by mlr3 predict_type
    "cross", # crossvalidation is done in mlr3
    "fit", # whether fitted values should be kept (not implemented by author)
    "na.action", # not implemented by author
    "epsilon", # hyperparameter for loss for "eps-svr", "nu-svr", "eps-bsvm" (regression)
    "subset", # mlr3
    # on the residuals, can be implemented if wanted
    # https://stackoverflow.com/questions/34323072/probability-model-in-kernlabksvm
    # the kpar parameters are passed explicitly via "kpar"; "degree", "scale", "order", "offset"
    "kpar",
    "degree",
    "sigma",
    "scale",
    "order",
    "offset"
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.ksvm predict", {
  learner = lrn("classif.ksvm")
  fun_list = list(
    s4_helper(getMethod("predict", "ksvm"))
  )
  exclude = c(
    # predict
    "object", # mlr3
    "newdata", # mlr3
    "type" # mlr3
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
