install_learners("regr.gbm")

test_that("autotest", {
  learner = LearnerRegrGBM$new()
  learner$param_set$values = mlr3misc::insert_named(
    learner$param_set$values,
    list(n.minobsinnode = 1))
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.gbm", {
  learner = lrn("regr.gbm")
  fun = gbm::gbm
  exclude = c(
    "formula", # handled by mlr3
    "data", # handled by mlr3
    "weights", # handled by mlr3
    "class.stratify.cv" # handled by mlr3
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
