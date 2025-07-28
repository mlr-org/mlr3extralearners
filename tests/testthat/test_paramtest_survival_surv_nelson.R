test_that("surv.nelson", {
  learner = lrn("surv.nelson")
  fun = survival::survfit
  exclude = c("formula") # coerced internally
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})
