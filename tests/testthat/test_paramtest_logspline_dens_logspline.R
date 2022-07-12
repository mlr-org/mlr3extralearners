test_that("paramtest dens.logspline", {
  learner = lrn("dens.logspline")
  fun = logspline::logspline
  exclude = c(
    "x" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})

# no predict time parameters
