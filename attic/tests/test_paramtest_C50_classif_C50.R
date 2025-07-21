test_that("paramtest classif.C50 train", {
  learner = lrn("classif.C50")
  fun_list = list(C50::C5.0, C50::C5.0Control, C50::C5.0.default)
  predict_args = formalArgs(C50::predict.C5.0)
  exclude = c(
    "x", # handled via mlr3
    "y", # handled via mlr3
    "control", # handled via mlr3
    "weights" # handled via mlr3 (belongs to the task)
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.C50 predict", {
  learner = lrn("classif.C50")
  fun_list = list(C50::predict.C5.0)
  predict_args = formalArgs(C50::predict.C5.0)
  exclude = c(
    "object", # handled via mlr3,
    "newdata", # handled via mlr3
    "type" # set via the `predict_type` field of the learner class
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
