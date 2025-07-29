test_that("paramtest regr.cubist train", {
  learner = lrn("regr.cubist")
  fun_list = list(Cubist::cubist, Cubist::cubistControl, Cubist:::cubist.default) # nolint
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "missing", # handled by mlr3
    "control", # handled by mlr3
    "weights" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.cubist predict", {
  learner = lrn("regr.cubist")
  fun_list = list(Cubist:::predict.cubist) # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
