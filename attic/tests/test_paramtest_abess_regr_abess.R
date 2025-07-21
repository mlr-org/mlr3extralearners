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
