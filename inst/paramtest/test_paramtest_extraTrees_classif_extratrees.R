library(mlr3extralearners)
install_learners("classif.extratrees")

test_that("classif.extratrees", {
  learner = lrn("classif.extratrees")
  fun = extraTrees::extraTrees
  exclude = c(
    "x" # handled by mlr3
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
