if (!requireNamespace("abess", quietly = TRUE)) {
  devtools::install_github(repo = "abess-team/abess", subdir = "R-package")
}
mlr3extralearners::install_learners("classif.abess")

test_that("classif.abess train", {
  learner = lrn("classif.abess")
  fun = abess::abess
  exclude = c(
    "x", # handled internally
    "family",
    "tune.path",
    "tune.type",
    "normalize",
    "c.max",
    "support.size",
    "lambda",
    "always.include",
    "group.index",
    "splicing.type",
    "max.splicing.iter",
    "screening.num",
    "important.search",
    "warm.start",
    "nfolds",
    "newton",
    "newton.thresh",
    "max.newton.iter",
    "early.stop",
    "num.threads",
    "seed",
    "subset",
    "na.action",
    "weight"
  )
  
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("classif.abess predict", {
  learner = lrn("classif.abess")
  fun = abess:::predict.abess
  exclude = c(
    "object", # handsetled internally
    "newx", # handled internally
    "type", # handled internally
    "family",
    "tune.path",
    "tune.type",
    "normalize",
    "c.max",
    "support.size",
    "lambda",
    "always.include",
    "group.index",
    "splicing.type",
    "max.splicing.iter",
    "screening.num",
    "important.search",
    "warm.start",
    "nfolds",
    "newton",
    "newton.thresh",
    "max.newton.iter",
    "early.stop",
    "num.threads",
    "seed",
    "subset",
    "na.action",
    "weight"
  )
  
  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
