install_learners("dens.nonpar")
load_tests("dens.nonpar")

test_that("autotest", {
  learner = LearnerDensNonparametric$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("paramtest dens.nonpar train", {
  learner = lrn("dens.nonpar")
  fun = sm::sm.density
  exclude = c(
    "x", # handled internally
    "weights", # handled by task
    "model", # only required for plotting
    # the following parameters are passed to sm.options
    "delta",
    "h.weights",
    "hmult",
    "method",
    "positive",
    "verbose"
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})
