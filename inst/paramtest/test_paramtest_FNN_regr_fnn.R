library(mlr3extralearners)
install_learners("regr.fnn")

test_that("regr.fnn", {
  learner = lrn("regr.fnn")
  fun = FNN::knn.reg # replace!
  exclude = c(
    "train", # handled by mlr
    "test", # handled by mlr
    "y" # handled by mlr
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
