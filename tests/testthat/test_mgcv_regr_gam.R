install_learners("regr.gam")
load_tests("regr.gam")

test_that("autotest", {
  learner = lrn("regr.gam")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.gam train", {
  learner = lrn("regr.gam")
  fun = mgcv::gam
  exclude = c(
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

test_that("regr.gam predict", {
  learner = lrn("regr.gam")
  fun = mgcv::predict.gam
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "newdata.guaranteed", # handled internally
    "na.action", # handled internally
    "se.fit", # handled internally
    "terms", # not relevant for predict type "se" or "response"
    "exclude", # not relevant for predict type "se" or "response"
    "iterms.type" # not relevant for predict type "se" or "response"
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
