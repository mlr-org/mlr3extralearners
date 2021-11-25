install_learners("surv.nelson")
load_tests("surv.nelson")

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
  exclude = c("formula" # coerced internally
              )

              ParamTest = run_paramtest(learner, fun, exclude)
              expect_true(ParamTest, info = paste0(
                "\nMissing parameters:\n",
                paste0("- '", ParamTest$missing, "'", collapse = "\n")
              ))
})

  # test_that("surv.survfit_control", {
  #   learner = lrn("surv.survfit")
  #   fun = survival::boost_control # replace!
  #   exclude = c(
  #     "center", # deprecated
  #   )
  #
  #   ParamTest = run_paramtest(learner, fun, exclude)
  #   expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
  #     paste0("- '", ParamTest$missing,"'", collapse = "\n")))
  # })
