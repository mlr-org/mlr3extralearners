install_learners("classif.bart")

test_that("autotest", {
  learner = lrn("classif.bart")

  learner$param_set$values = c(
    learner$param_set$values,
    ntree = 5L
  )

  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("classif.bart", {
  learner = lrn("classif.bart")
  fun_list = list(dbarts::bart, dbarts:::predict.bart)
  exclude = c(
    "x.train", # handled internally
    "y.train", # handled internally
    "x.test", # handled internally
    "weights", # handled by task
    "nthread", # handled by future
    "nchain", # unused (specifies how many independent tree sets and fits should be calculated
    # This can be done with future
    "combineChains", # only used if nchain > 1
    "combinechains", # only used if nchain > 1
    "newdata", # handled internally
    "object", # handled internally
    "type", # only allow the response
    "offset", # we don't allow offsets (only using bart2 allows to train with offset, theoretically
    # the predict function still uses an offset but this will only be implemented if a user demands
    # it (https://cran.r-project.org/web/packages/dbarts/dbarts.pdf)
    "sigest", # regr only
    "sigdf", # regr only
    "sigquant", # regr only
    "keeptrees" # must be TRUE for prediction
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
