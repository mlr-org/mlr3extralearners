skip_if_not_installed("pls")

test_that("paramtest regr.plsr train", {
  learner = lrn("regr.plsr")
  fun_list = list(pls::mvr, pls:::mvrCv, pls::kernelpls.fit, pls::widekernelpls.fit, pls::simpls.fit, pls::oscorespls.fit) # nolint
  exclude = c(
    "formula", # constructed from task data
    "Y.add", # additional response not supported
    "X", # data matrix built internally
    "Y", # response matrix built internally
    "data", # passed internally
    "subset", # handled internally
    "na.action", # handled internally
    "weights", # extracted from task
    "segments", # optional CV config handled by validation
    "segment.type", # optional CV config handled by validation
    "length.seg", # optional CV config handled by validation
    "jackknife", # not exposed
    "trace", # not exposed
    "stripped", # only relevant for internal efficiency
    "tol", # passed to lower-level routines
    "maxit" # passed to lower-level routines
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.plsr predict", {
  learner = lrn("regr.plsr")
  fun = pls:::predict.mvr #nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "ncomp", # handled internally
    "comps", # handled internally
    "type", # fixed to response
    "na.action" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
