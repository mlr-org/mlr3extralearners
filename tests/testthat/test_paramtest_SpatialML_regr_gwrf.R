skip_if_not_installed("SpatialML")

test_that("paramtest regr.gwrf train", {
  learner = lrn("regr.gwrf")
  fun_list = list(SpatialML::grf)
  exclude = c(
    "formula", # handled by mlr3
    "dframe", # handled by mlr3
    "coords", # handled by mlr3
    "forests", # local forests are required for prediction
    "print.results", # set to FALSE
    "min.node.size", # passed to ranger::ranger()
    "max.depth", # passed to ranger::ranger()
    "replace", # passed to ranger::ranger()
    "sample.fraction" # passed to ranger::ranger()
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.gwrf predict", {
  learner = lrn("regr.gwrf")
  fun_list = list(SpatialML::predict.grf)
  exclude = c(
    "object", # handled by mlr3
    "new.data", # handled by mlr3
    "x.var.name", # handled by mlr3
    "y.var.name", # handled by mlr3
    "local.w", # set to 1
    "global.w" # set to 0
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
