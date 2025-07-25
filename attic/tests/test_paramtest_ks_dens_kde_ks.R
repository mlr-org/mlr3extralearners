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
