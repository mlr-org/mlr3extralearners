skip_if_not_installed("mlr3proba")
skip_if_not_installed("gss")

test_that("paramtest dens.spline train", {
  learner = lrn("dens.spline")
  fun = gss::ssden
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "subset" # handled by task
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

# no predict parameters
