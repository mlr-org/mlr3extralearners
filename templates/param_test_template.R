library(mlr3extralearners)
install_learners("<type>.<key>")

test_that("<type>.<key> train", {
  learner = lrn("<type>.<key>")
  fun = <package>::<caller>
  exclude = c(
    "object", # handled internally
    "data" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("<type>.<key> predict", {
  learner = lrn("<type>.<key>")
  fun = <package>:::predict
    exclude = c(
      "object", # handled internally
      "data", # handled internally
      "newdata" # handled internally
    )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
