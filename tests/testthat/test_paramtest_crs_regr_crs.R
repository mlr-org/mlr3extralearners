skip_if_not_installed("crs")

test_that("train regr.crs", {
  learner = lrn("regr.crs")
  fun = crs:::crs.formula  #nolint
  exclude = c(
    "formula", # handled internally
    "data", # handled by internally
    "weights" # handled internally
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})


