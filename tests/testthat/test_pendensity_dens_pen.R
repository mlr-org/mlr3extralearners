install_learners("dens.pen")
load_tests("dens.pen")

test_that("autotest", {
  learner = lrn("dens.pen")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("dens.pen", {
  learner = lrn("dens.pen")
  fun = pendensity::pendensity
  exclude = c(
    "form", # handled internally
    "data" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
