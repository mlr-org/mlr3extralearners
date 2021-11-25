install_learners("dens.spline")
load_tests("dens.spline")

test_that("autotest", {
  learner = lrn("dens.spline")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("dens.spline", {
  learner = lrn("dens.spline")
  fun = gss::ssden
  exclude = c(
    "formula", # handled internally
    "data", # handled internally
    "subset" # handled by task
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
