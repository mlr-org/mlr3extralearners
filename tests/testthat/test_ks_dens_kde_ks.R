install_learners("dens.kde_ks")
load_tests("dens.kde_ks")

test_that("autotest", {
  learner = LearnerDensKDEks$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)

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
})
