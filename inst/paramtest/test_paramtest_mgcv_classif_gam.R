library(mlr3extralearners)
install_learners("classif.gam")

test_that("classif.gam train", {
  learner = lrn("classif.gam")
  fun = mgcv::gam
  exclude = c(
    "family", # handled relatively to type of task
    "data", # handled internally
    "weights", # handled internally
    "subset",# handled internally
    "na.action", # handled internally
    "control" # temporary
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("classif.gam predict", {
  learner = lrn("classif.gam")
  fun = mgcv:::predict
    exclude = c(
    )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
