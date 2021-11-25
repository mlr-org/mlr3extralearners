install_learners("classif.gam")
load_tests("classif.gam")

test_that("autotest", {
  learner = LearnerClassifGam$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.gam train", {
  learner = lrn("classif.gam")
  fun = mgcv::gam
  exclude = c(
    "family", # handled relatively to type of task
    "data", # handled internally
    "weights", # handled internally
    "subset", # handled internally
    "na.action", # handled internally
    "control", # handled via "train" parameters
    "fit", # A model should be fitted
    "discrete" # experimental, should not be modified
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("classif.gam control", {
  learner = lrn("classif.gam")
  fun = mgcv::gam.control
  exclude = c(
    "keepData" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = ",")))
})

test_that("classif.gam predict", {
  learner = lrn("classif.gam")
  fun = mgcv::predict.gam
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "newdata.guaranteed", # handled internally
    "na.action", # handled internally
    "se.fit", # not supported for classification
    "terms", # not relevant for predict type "prob" or "response"
    "exclude", # not relevant for predict type "prob" or "response"
    "iterms.type" # not relevant for predict type "prob" or "response"
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
