test_that("paramtest classif.mob train", {
  learner = lrn("classif.mob")
  fun_list = list(partykit::mob, partykit::mob_control)
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "subset", # handled in mlr3
    "na.action", # handled in mlr3
    "weights", # handled in mlr3
    "control", # handled in partykit::mob_control
    "additional", # additional arguments passed to fitting function (instead of ...)
    "rhs" # used for construction of formula
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.mob predict", {
  learner = lrn("classif.mob")
  fun_list = list(partykit:::predict.modelparty) # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "type", # implemented via predict_fun
    "predict_fun" # used for type
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
