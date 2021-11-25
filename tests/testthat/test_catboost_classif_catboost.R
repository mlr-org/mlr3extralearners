if (!requireNamespace("catboost", quietly = TRUE)) {
  install_catboost("0.26.1")
}

test_that("autotest", {
  learner = lrn("classif.catboost", iterations = 10)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.catboost_catboost.train", {
  learner = lrn("classif.catboost")
  fun = catboost::catboost.train
  exclude = c(
    "learn_pool", # handled via mlr3
    "test_pool", # don't use internal validation
    "params" # each parameter supplied separately
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("classif.catboost_catboost.predict", {
  learner = lrn("classif.catboost")
  fun = catboost::catboost.predict
  exclude = c(
    "model", # handled via mlr3
    "pool", # handled via mlr3
    "prediction_type" # handled via mlr3
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
