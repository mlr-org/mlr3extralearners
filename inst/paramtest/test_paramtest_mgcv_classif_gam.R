library(mlr3extralearners)
install_learners("classif.gam")

test_that("classif.gam train", {
  learner = lrn("classif.gam")
  fun = mgcv::gam
  exclude = c(
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("classif.gam predict", {
  learner = lrn("classif.gam")
  fun = mgcv:::predict
    exclude = c(
    )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
