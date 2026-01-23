skip_if_not_installed("caret")
skip_if_not_installed("pls")

test_that("classif.plsdaCaret train", {
  learner = lrn("classif.plsdaCaret")
  fun = caret::plsda
  exclude = c(
    "x", # handled internally
    "y" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("classif.plsdaCaret predict", {
  learner = lrn("classif.plsdaCaret")
  fun = caret:::predict.plsda # nolint
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "ncomp" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
