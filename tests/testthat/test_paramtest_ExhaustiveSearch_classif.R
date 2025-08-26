skip_if_not_installed("ExhaustiveSearch")

test_that("paramtest classif.exhaustive_search train", {
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
  learner = lrn("classif.exhaustive_search")
  fun_list = list(stats::predict.glm) # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "se.fit", # not used
    "dispersion", # not used
    "terms", # not used
    "na.action" # not used
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
