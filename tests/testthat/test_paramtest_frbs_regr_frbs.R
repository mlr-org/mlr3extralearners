skip_if_not_installed("frbs")

test_that("paramtest regr.frbs train", {
  learner = lrn("regr.frbs")
  fun_list = list(frbs::frbs.learn)
  exclude = c(
    "data.train", # handled by mlr3
    "range.data", # optional, computed from training data when omitted
    "control", # constructed from learner parameters
    "num.labels",  # handled by control function
    "type.mf",  # handled by control function
    "type.defuz",  # handled by control function
    "type.tnorm",  # handled by control function
    "type.snorm",  # handled by control function
    "type.implication.func",  # handled by control function
    "max.iter",  # handled by control function
    "step.size",  # handled by control function
    "r.a",  # handled by control function
    "eps.high",  # handled by control function
    "eps.low",  # handled by control function
    "alpha.heuristic",  # handled by control function
    "Dthr",  # handled by control function
    "d",  # handled by control function
    "persen_cross",  # handled by control function
    "max.gen",  # handled by control function
    "max.tune",  # handled by control function
    "persen_mutant",  # handled by control function
    "epsilon",  # handled by control function
    "popu.size",  # handled by control function
    "mode.tuning",  # handled by control function
    "rule.selection"  # handled by control function
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.frbs predict", {
  learner = lrn("regr.frbs")
  fun_list = list(frbs:::predict.frbs) # nolint
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
        "num.labels",  # handled by control function
    "type.mf",  # handled by control function
    "type.defuz",  # handled by control function
    "type.tnorm",  # handled by control function
    "type.snorm",  # handled by control function
    "type.implication.func",  # handled by control function
    "max.iter",  # handled by control function
    "step.size",  # handled by control function
    "r.a",  # handled by control function
    "eps.high",  # handled by control function
    "eps.low",  # handled by control function
    "alpha.heuristic",  # handled by control function
    "Dthr",  # handled by control function
    "d",  # handled by control function
    "persen_cross",  # handled by control function
    "max.gen",  # handled by control function
    "max.tune",  # handled by control function
    "persen_mutant",  # handled by control function
    "epsilon",  # handled by control function
    "popu.size",  # handled by control function
    "mode.tuning",  # handled by control function
    "rule.selection"  # handled by control function
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
