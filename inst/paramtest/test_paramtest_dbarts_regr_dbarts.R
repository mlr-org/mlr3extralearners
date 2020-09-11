library(mlr3extralearners)
install_learners("regr.dbarts")

test_that("regr.dbarts", {
  learner = lrn("regr.dbarts")
  fun = akritas
  exclude = c(

  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

# example for checking a predict function of a learner
test_that("regr.dbarts_predict", {
  learner = lrn("regr.dbarts")
  fun = predict
  exclude = c(

  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
