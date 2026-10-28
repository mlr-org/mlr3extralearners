# temporary: reproduction of the botorch segfault, adding pieces of run_py_test() one at a time
mode = commandArgs(TRUE)[1L]
Sys.setenv(RETICULATE_PYTHON = path.expand("~/.virtualenvs/mlr3extralearners-botorch/bin/python"), PYTHONFAULTHANDLER = "1")
library(mlr3)
library(mlr3extralearners)
if (mode %in% c("proba", "helpers", "mirai")) {
  library(testthat)
  library(checkmate)
  library(paradox)
  library(mlr3proba)
}
if (mode %in% c("helpers", "mirai")) {
  helper_files = list.files(system.file("testthat", package = "mlr3"), pattern = "^helper.*\\.[rR]", full.names = TRUE)
  lapply(helper_files, source)
}
if (mode == "mirai") {
  mirai::daemons(1, .compute = "mlr3_encapsulation")
}
task = tsk("mtcars")
kernels = c("matern_2.5", "matern_1.5", "matern_0.5", "rbf", "linear", "polynomial", "periodic", "rq",
  "piecewise_polynomial", "constant")
for (k in kernels) {
  cat(k, "\n")
  learner = lrn("regr.botorch_singletaskgp", kernel = k)
  learner$train(task)
  print(learner$predict(task)$score())
}
cat(mode, "OK\n")
