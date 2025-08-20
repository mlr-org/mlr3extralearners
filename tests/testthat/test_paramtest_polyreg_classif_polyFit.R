skip_if_not_installed("polyreg")

test_that("paramtest classif.polyFit train", {
  learner = lrn("classif.polyFit")
  fun_list = list(polyreg::polyFit)
  exclude = c(
    "xy", # handled internally
    "use", # handled internally
    "glmMethod" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.polyFit predict", {
  learner = lrn("classif.polyFit")
  fun_list = list(polyreg:::predict.polyFit) # nolint
  exclude = c(
    "object", # handled internally
    "newdata" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, "predict")
  expect_paramtest(paramtest)
})
