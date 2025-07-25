test_that("paramtest regr.earth train", {
  learner = lrn("regr.earth")
  fun = earth:::earth.default # nolint
  fun_list = list(earth:::earth.default, earth:::earth.fit) # nolint

  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "subset", # handled internally
    "weights", # handled internally
    "na.action", # only one option
    "glm", # handled internally
    "Object" # only used when called by update.earth
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.earth predict", {
  learner = lrn("regr.earth")
  fun = earth:::earth.default
  fun_list = list(earth:::predict.earth)

  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "level", # unused
    "interval", # handled internally
    "thresh", # not implemented by author
    "trace" # not implemented by author
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
