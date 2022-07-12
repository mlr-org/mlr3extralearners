test_that("paramtest regr.bart train", {
  learner = lrn("regr.bart")
  fun_list = list(dbarts::bart)
  exclude = c(
    "x.train", # handled internally
    "y.train", # handled internally
    "x.test", # handled internally
    "binaryOffset", # classification only
    "weights", # handled by task
    "nthread", # handled by future (
    "nchain", # unused (specifies how many independent tree sets and fits should be calculated
    # This can be done with future
    "combinechains" # only used if nchain > 1
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest regr.bart predict", {
  learner = lrn("regr.bart")
  fun_list = list(dbarts:::predict.bart) # nolint
  exclude = c(
    "combineChains", # only used if nchain > 1
    "newdata", # handled internally
    "object", # handled internally
    "type", # only allow the response
    "offset" # we don't allow offsets (only using bart2 allows to train with offset, theoretically
    # the predict function still uses an offset but this will only be implemented if a user demands
    # it (https://cran.r-project.org/web/packages/dbarts/dbarts.pdf)
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
