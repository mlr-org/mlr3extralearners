install_learners("regr.gamboost")

test_that("autotest", {
  learner = LearnerRegrGAMBoost$new()
  learner$param_set$values = list(baselearner = "btree")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.gamboost", {
  learner = lrn("regr.gamboost")
  fun_list = list(mboost::gamboost, mboost::boost_control)

  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "center", # depreacated
    "custom.family", 
    "nuirange", # Parameter belongs to the families GammaReg etc.
    "d" # Belongs to the Huber family
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
