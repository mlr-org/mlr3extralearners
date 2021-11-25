install_learners("classif.ksvm")

test_that("autotest", {
  learner = LearnerClassifKSVM$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.ksvm", {
  learner = lrn("classif.ksvm")
  fun = kernlab::ksvm
  exclude = c(
    "x", # handled by mlr3
    "..." # not supported
  )
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
