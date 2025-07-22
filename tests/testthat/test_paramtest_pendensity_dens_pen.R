test_that("paramtest dens.pen train", {
  learner = lrn("dens.pen")
  fun_list = list(pendensity::pendensity)
  exclude = c(
    "form", # handled internally
    "data" # handled internally
  )
  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})

# no predict time parameters
