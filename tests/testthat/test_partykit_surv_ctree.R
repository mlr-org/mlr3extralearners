install_learners("surv.ctree")
load_tests("surv.ctree")

test_that("autotest", {
  set.seed(1)
  learner = LearnerSurvCTree$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("surv.ctree", {
  learner = lrn("surv.ctree")
  fun_list = list(partykit::ctree, partykit::ctree_control, partykit::predict.party,
    mvtnorm::GenzBretz)
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "subset", # handled in mlr3
    "weights", # handled in mlr3
    "na.action", # handled in mlr3
    "control", # handled in partykit::ctree_control
    "ytrafo", # handled in mlr3pipelines
    "converged", # not to be used by the user
    "perm", # used for variable importance (permuting the data)
    "newdata", # handled by mlr3
    "object", # handled by mlr3
    "pargs", # control parameters (GenzBretz()) are passed explicitly :
    "maxpts", # pargs param
    "releps", # pargs param
    "abseps"
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
