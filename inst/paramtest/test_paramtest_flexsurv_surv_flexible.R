library(mlr3extralearners)
install_learners("surv.flexible")

test_that("surv.flexible_train", {
  learner = lrn("surv.flexible")
  fun = flexsurv::flexsurvspline
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "weights", # handle by task
    "subset" # handle by task
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("surv.flexible_control", {
  learner = lrn("surv.flexible")
  fun = survival::survreg.control
  exclude = c(
    "iter.max" # identical to maxiter
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
