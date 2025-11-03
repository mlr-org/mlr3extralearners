skip_if_not_installed("sparsediscrim")

test_that("classif.sdlda train", {
  learner = lrn("classif.sdlda")
  fun = sparsediscrim:::lda_shrink_cov.formula
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "formula" # handled internally
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.sdlda predict", {
  learner = lrn("classif.sdlda")
  fun = sparsediscrim:::predict.lda_shrink_cov # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata", # handled internally
    "type" # handled internally
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
