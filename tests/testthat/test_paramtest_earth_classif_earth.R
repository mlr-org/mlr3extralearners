test_that("paramtest classif.earth train", {
  learner = lrn("classif.earth")
  fun_list = list(earth:::earth.default, earth:::earth.fit) # nolint

  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "subset", # handled internally
    "weights", # handled internally
    "na.action", # only one option
    "glm", # handled internally
    "object", # handled internally
    "Object" # only used when called by update.earth
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.earth train", {
  learner = lrn("classif.earth")
  fun_list = earth:::predict.earth # nolint

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
