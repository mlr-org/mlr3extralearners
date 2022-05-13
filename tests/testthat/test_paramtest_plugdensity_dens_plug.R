test_that("dens.plug", {
  learner = lrn("dens.plug")
  fun = plugdensity::plugin.density
  exclude = c(
    "x", # handled internally
    "nout", # not required when `xout` used
    "xout" # handled in predict
  )

  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})

# no predict time parameters
