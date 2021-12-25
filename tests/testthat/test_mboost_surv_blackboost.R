install_learners("surv.blackboost")
load_tests("surv.blackboost")

test_that("autotest aft", {
  skip_on_cran()
  set.seed(1)
  learner = lrn("surv.blackboost", family = "loglog")
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, N = 50, exclude = "weights", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("autotest ph", {
  skip_on_cran()
  set.seed(1)
  learner = lrn("surv.blackboost")
  expect_learner(learner)
  # weights are fine for all predict types except 'distr'
  result = run_autotest(learner, N = 50, exclude = "weights", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("ctrlpars", {
  skip_on_cran()
  set.seed(1)
  task = tsk("rats")
  learner = lrn("surv.blackboost", mstop = 99, maxpts = 24000, abseps = 0.1)
  p = learner$train(task, row_ids = 1:50)$predict(task, row_ids = 51:100)
  expect_true(inherits(p, "PredictionSurv"))
})

test_that("surv.blackboost", {
  learner = lrn("surv.blackboost")
  fun_list = list(mboost::blackboost, mboost::boost_control, partykit::ctree_control)
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "tree_controls", # handled internally
    "custom.family", # pass a custom family (the rest is parametrized by characters)
    "pargs", # Args for families are implemented explicitly
    "maxvar", # not implemented by the author
    "numsurrogate", # for backward compatability with party
    "applyfun", # parallelization
    "cores", # parallelization
    "saveinfo", # parallelization
    "update", # parallelization
    "splitflavour", # feature may change
    # ths
    "nuirange",
    "maxpts", # mvtnorm::GenzBretz
    "abseps", # mvtnorm::GenzBretz
    "releps", # mvtnorm::GenzBretz
    "sigma", # mboost.:Cindex
    "ipcw" # mboost::Cindex
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)

})
