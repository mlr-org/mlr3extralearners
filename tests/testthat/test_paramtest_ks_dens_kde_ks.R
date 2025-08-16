skip_if_not_installed("ks")

skip_if_not_installed("mlr3proba")
skip_if_not_installed("distr6")

test_that("paramtest dens.kde_ks train", {
  learner = lrn("dens.kde_ks")
  fun = ks::kde
  exclude = c(
    "x", # handled internally
    "eval.points" # handled by predict
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})
