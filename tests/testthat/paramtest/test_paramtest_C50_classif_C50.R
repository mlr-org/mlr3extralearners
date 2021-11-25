library(mlr3extralearners)
mlr3extralearners::install_learners("classif.C50")

test_that("classif.C50", {
  learner = lrn("classif.C50")
  fun = C50::C5.0
  exclude = c(
    "x" # handled via mlr3
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
