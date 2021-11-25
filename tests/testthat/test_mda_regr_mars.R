install_learners("regr.mars")
load_tests("regr.mars")

test_that("autotest", {
  learner = lrn("regr.mars")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.mars train", {
  learner = lrn("regr.mars")
  fun = mda::mars
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "w", # handled internally
    "wp", # ignored
    "prevfit" # ignored
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("regr.mars predict", {
  learner = lrn("regr.mars")
  fun = mda:::predict.mars # nolint
    exclude = c(
      "object", # handled internally
      "newdata" # handled internally
    )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
