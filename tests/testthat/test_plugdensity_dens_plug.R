# FIXME: For some reason these tests were commented out?
install_learners("dens.plug")
load_tests("dens.plug")

test_that("autotest", {
  set.seed(1)
  learner = LearnerDensPlugin$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("dens.plug", {
  learner = lrn("dens.plug")
  fun = plugdensity::plugin.density
  exclude = c(
    "x", # handled internally
    "nout", # not required when `xout` used
    "xout" # handled in predict
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
