test_that("autotest", {
  learner = lrn("surv.nelson")
  expect_learner(learner)
  # sanity always 0.5
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("surv.nelson", {
  learner = lrn("surv.nelson")
  fun = survival::survfit
  exclude = c("formula") # coerced internally
  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})
