test_that("paramtest regr.glm train", {
  learner = lrn("regr.glm")
  fun_list = list(stats::glm, stats::glm.control)
  exclude = c(
    "formula", # handled by mlr3
    "data", # handled by mlr3
    "weights", # handled by mlr3
    "subset", # handled by mlr3
    "method", # we always use glm()
    "control", # handled by glm.control
    "contrasts", # causes lots of troubles just when setting the defaul
    "link" # parameter passed to the family
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.glm predict", {
  learner = lrn("regr.glm")
  fun = stats:::predict.glm # nolint
  exclude = c(
    "object", # handled via mlr3
    "newdata", # handled via mlr3
    "se.fit", # handled via mlr3
    "terms" # not implemented by author
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
