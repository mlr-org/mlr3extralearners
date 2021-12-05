install_learners("classif.C50")

test_that("autotest", {
  learner = LearnerClassifC50$new()
  learner$param_set$values <- list(trials = 30L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})


test_that("paramtest", {
  learner = lrn("classif.C50")
  fun_list = list(C50::C5.0, C50::C5.0Control, C50::predict.C5.0, C50::C5.0.default)
  predict_args = formalArgs(C50::predict.C5.0)
  exclude = c(
    "x", # handled via mlr3
    "object", # handled via mlr3,
    "newdata", # handled via mlr3
    "y", # handled via mlr3
    "control", # handled via mlr3
    "weights", # handled via mlr3 (belongs to the task)
    "type" # set via the `predict_type` field of the learner class
  )
  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_true(paramtest)
})
