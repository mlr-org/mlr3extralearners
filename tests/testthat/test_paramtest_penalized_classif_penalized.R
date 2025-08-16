skip_if_not_installed("penalized")

test_that("classif.penalized train", {
  learner = lrn("classif.penalized")
  fun_list = list(penalized::penalized)
  exclude = c(
    "response", # coerced internally
    "penalized", # all variables assumed penalized unless passed to 'unpenalized' parameter
    "data", # coerced internally
    "model" # coerced internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.penalized predict", {
  learner = lrn("classif.penalized")
  fun_list = list(penalized:::predict) # nolint
  exclude = c(
    "object", # passed internally
    "unpenalized" # see learner details
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
