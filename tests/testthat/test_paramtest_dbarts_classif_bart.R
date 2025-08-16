skip_if_not_installed("dbarts")

test_that("paramtest classif.bart train", {
  learner = lrn("classif.bart")
  fun_list = list(dbarts::bart)
  exclude = c(
    "x.train", # handled internally
    "y.train", # handled internally
    "x.test", # handled internally
    "weights", # handled by task
    "nchain", # unused (specifies how many independent tree sets and fits should be calculated
    # This can be done with future
    "combinechains", # only used if nchain > 1
    "sigest", # regr only
    "sigdf", # regr only
    "sigquant", # regr only
    "keeptrees", # must be TRUE for prediction
    "weights" # train predict weights not clear from the documentation
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("paramtest classif.bart predict", {
  learner = lrn("classif.bart")
  fun_list = list(dbarts:::predict.bart)
  exclude = c(
    "combineChains", # only used if nchain > 1
    "newdata", # handled internally
    "object", # handled internally
    "type", # only allow the response
    "offset", # we don't allow offsets (only using bart2 allows to train with offset, theoretically
    "weights" # train predict weights not clear from the documentation
    # the predict function still uses an offset but this will only be implemented if a user demands
    # it (https://cran.r-project.org/web/packages/dbarts/dbarts.pdf)
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
