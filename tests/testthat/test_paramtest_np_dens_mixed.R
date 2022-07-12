test_that("paramtest dens.mixed train", {
  learner = lrn("dens.mixed")
  fun_list = list(np::npudens, np:::npudensbw.default) # nolint

  exclude = c(
    "dat", # handled by mlr3
    "scale.init.categorical.sample" # not implemented by the author
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

# No predict time parameters
