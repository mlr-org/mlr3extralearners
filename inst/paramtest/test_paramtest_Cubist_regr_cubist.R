install_learners("regr.cubist")

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
  fun = Cubist:::predict.cubist
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
