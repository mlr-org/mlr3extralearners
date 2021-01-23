library(mlr3extralearners)
install_learners("classif.earth")

test_that("classif.earth", {
  learner = lrn("classif.earth")
  fun = earth::earth
  exclude = c(

  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("classif.earth predict", {
  learner = lrn("classif.earth")
  fun = earth:::predict.earth
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "interval", # unused
    "level" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")
  ))
})
