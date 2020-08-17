library(mlr3extralearners)

test_that("dens.kde_ks", {
  learner = lrn("dens.kde_ks")
  fun = ks::kde
  exclude = c(
    "x", # handled internally
    "eval.points" # handled by predict
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
