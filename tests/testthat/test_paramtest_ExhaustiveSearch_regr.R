skip_if_not_installed("ExhaustiveSearch")

test_that("paramtest regr.exhaustive_search train", {
  learner = lrn("regr.exhaustive_search")
  fun_list = list(ExhaustiveSearch::ExhaustiveSearch)
  exclude = c(
    "formula", # handled internally
    "data" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramset regr.exhaustive_search predict", {
  learner = lrn("regr.exhaustive_search")
  fun_list = list(stats::predict.lm) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "se.fit", # handled internally,
    "scale", # not used
    "df", # not used
    "interval", # not used
    "level", # not used
    "type", # not used
    "terms", # not used
    "na.action", # not used
    "pred.var", # not used
    "weights", # not used
    "rankdeficient", # not used
    "tol", # not used
    "verbose" # not used
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
