install_learners("regr.cubist")
load_tests("regr.cubist")

test_that("autotest", {
  learner = lrn("regr.cubist")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.cubist train", {
  learner = lrn("regr.cubist")
  fun = Cubist::cubist
  exclude = c(
    "x", # handled internally
    "y" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("regr.cubist predict", {
  learner = lrn("regr.cubist")
  fun = Cubist:::predict.cubist # nolint
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
