skip_if_not_installed("bst")
skip_if_not_installed("rpart")

test_that("regr.bst train", {
  learner = lrn("regr.bst")
  fun = c(bst::bst, bst::bst_control) # nolint
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "ctrl", # handled internally
    "control.tree", # handled internally
    "learner", # handled internally
    "Learner", # handled internally
    formalArgs(rpart::rpart.control)
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("regr.bst predict", {
  learner = lrn("regr.bst")
  fun = bst:::predict.bst # nolint
  exclude = c(
    "object", # handled internally
    "data", # handled internally
    "newdata", # handled internally
    "newy", # handled internally
    "type" # handled internally
  )
  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
