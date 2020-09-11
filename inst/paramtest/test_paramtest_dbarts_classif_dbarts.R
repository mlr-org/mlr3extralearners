library(mlr3extralearners)
install_learners("classif.dbarts")

test_that("classif.dbarts", {
  learner = lrn("classif.dbarts")
  fun = akritas
  exclude = c(

  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

# example for checking a predict function of a learner
test_that("classif.dbarts_predict", {
  learner = lrn("classif.dbarts")
  fun = predict
  exclude = c(

  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
