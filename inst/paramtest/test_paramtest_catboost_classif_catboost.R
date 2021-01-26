library(mlr3extralearners)
devtools::install_url('https://github.com/catboost/catboost/releases/download/v0.24.1/catboost-R-Linux-0.24.1.tgz', # nolint
                      INSTALL_opts = c("--no-multiarch"))

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
