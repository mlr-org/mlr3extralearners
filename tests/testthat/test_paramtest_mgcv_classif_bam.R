skip_if_not_installed("mgcv")

test_that("paramtest classif.bam train", {
  learner = lrn("classif.bam")
  fun_list = list(mgcv::bam)
  exclude = c(
    "data", # handled by mlr3
    "weights", # handled by mlr3
    "subset", # handled by mlr3
    "na.action", # handled by mlr3
    "offset", # handled by mlr3
    "family", # always binomial
    "fit", # the model is always fitted
    "equalize.cluster.weights" # not implemented by author
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.bam predict", {
  learner = lrn("classif.bam")
  fun_list = list(mgcv:::predict.bam) # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "type", # the response scale is always used
    "se.fit", # handled by mlr3 predict_type
    "newdata.guaranteed", # the data always comes from the task
    "na.action", # handled by mlr3
    "discrete" # collides with the train parameter, see the learner documentation
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
