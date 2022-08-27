test_that("regr.abess train", {
  learner = lrn("regr.abess")
  fun = abess:::abess.default
  exclude = c(
    "x", # handled by mlr3
    "y", # handled by mlr3
    "weight" # handled by mlr3
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude, tag = 'train')
  expect_paramtest(paramtest)
})

test_that("regr.abess predict", {
  learner = lrn("regr.abess")
  fun = predict # nolint
  exclude = c(
    "support.size", # handled by mlr3
    "type", # regr needn't type
    "newx", # handled by mlr3
    "object" # handled by mlr3
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = 'perdict')
  expect_paramtest(paramtest)
})
