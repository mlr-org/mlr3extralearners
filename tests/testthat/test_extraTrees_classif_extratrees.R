install_learners("classif.extratrees")

test_that("autotest", {
  learner = lrn("classif.extratrees")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

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
