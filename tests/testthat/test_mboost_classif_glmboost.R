install_learners("classif.glmboost")

test_that("autotest", {
  learner = LearnerClassifGLMBoost$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.glmboost", {
  learner = lrn("classif.glmboost")
  fun_list = list(mboost:::glmboost.formula, mboost::boost_control)
  exclude = c(
    "formula", # handled via mlr3
    "data", # handled via mlr3
    "weights", # handled via mlr3
    "control", # handled to mboost::boost_control
    "center", # deprecated
     "custom.family", # provide custom family
    "link", # mboost::Binomial
    "type" # mboost::Binomial
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
