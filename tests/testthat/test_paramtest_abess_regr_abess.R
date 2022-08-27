test_that("regr.abess train", {
  learner = lrn("regr.abess")
  fun = abess::abess
  exclude = c(
    "weight", # handled by mlr3
  )

  # note that you can also pass a list of functions in case $.train calls more than one
  # function, e.g. for control arguments
  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})

test_that("regr.abess predict", {
  learner = lrn("regr.abess")
  fun = abess:::predict.abess # nolint
  exclude = c(
    "type"
  )

  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})
