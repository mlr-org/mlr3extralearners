test_that("regr.lmer train", {
  learner = lrn("classif.glmer")
  fun = c(lme4::glmer, lme4::glmerControl)
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "control", # handled via "train" parameters
    "weights", # handled internally
    "na.action", # handled internally
    "subset", # handled internally
    "use.last.params", # used in lme4 for "backwards bug-compatibility"
    "sparseX", # currently inactive
    "standardize.X", # not implemented
    "mod.type", # handled internally by lme4
    "devFunOnly" # if set, no prediction is possible

  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.lmer predict", {
  learner = lrn("regr.lmer")
  fun = lme4:::predict.merMod # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata", # handled internally
    "ReForm", # alias of re.form
    "REForm", # alias of re.form
    "REform", # alias of re.form
    "terms", # unused
    "type" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
