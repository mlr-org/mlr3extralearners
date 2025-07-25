test_that("classif.dlda train", {
  learner = lrn("classif.dlda")
  fun = sparsediscrim:::lda_diag.formula
  exclude = c(
    "x",
    "y",
    "object", # handled internally
    "data", # handled internally
    "formula" # handled internally
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.dlda predict", {
  learner = lrn("classif.dlda")
  fun = sparsediscrim:::predict.lda_diag # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata", # handled internally
    "type" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
