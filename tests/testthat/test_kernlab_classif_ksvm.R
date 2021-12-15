install_learners("classif.ksvm")

test_that("autotest", {
  learner = LearnerClassifKSVM$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.ksvm", {
  learner = lrn("classif.ksvm")
  fun_list = list(
    s4_helper(getMethod("ksvm", "matrix")),
    s4_helper(getMethod("predict", "ksvm"))
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
    "offset",
    # predict
    "object", # mlr3
    "newdata"
  )
  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})


