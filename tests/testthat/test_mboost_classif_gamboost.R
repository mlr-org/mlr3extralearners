install_learners("classif.gamboost")

test_that("autotest", {
  learner = LearnerClassifGAMBoost$new()
  learner$param_set$values = list(baselearner = "btree", family = "Binomial")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.gamboost", {
  learner = lrn("classif.gamboost")
  fun_list = list(mboost::gamboost, mboost::boost_control)
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "center", # (mboost_control) depreacated
    "custom.family", # Provide a custom family
    "type", # mboost::Binomial
    "link" # mboost::Binomial
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
