library(mlr3extralearners)

test_that("classif.fnn", {
  learner = lrn("classif.fnn")
  fun = FNN::knn # replace!
  exclude = c(
    "train", # handled by mlr
    "test", # handled by mlr
    "y", # handled by mlr
    "cl", # this is essentially the target feature, handled by mlr
    "prob" # handled by mlr
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
