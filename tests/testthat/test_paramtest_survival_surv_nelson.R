skip_if_not_installed("mlr3proba")
skip_if_not_installed("survival")

test_that("surv.nelson", {
  learner = lrn("surv.nelson")
  fun = survival::survfit
  exclude = "formula" # coerced internally
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})
