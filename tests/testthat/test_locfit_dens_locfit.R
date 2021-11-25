install_learners("dens.locfit")
load_tests("dens.locfit")

test_that("autotest", {
  learner = LearnerDensLocfit$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("dens.locfit", {
  learner = lrn("dens.locfit")
  fun = locfit::density.lf
  exclude = c(
    "x", # handled in predict
    "n", # ev used instead
    "ev", # handled in predict
    "family" # always density
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
