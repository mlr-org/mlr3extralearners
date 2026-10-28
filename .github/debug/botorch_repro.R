# temporary: reproduction of the botorch segfault via reticulate
mode = commandArgs(TRUE)[1L]
Sys.setenv(RETICULATE_PYTHON = path.expand("~/.virtualenvs/mlr3extralearners-botorch/bin/python"), PYTHONFAULTHANDLER = "1")
if (mode == "reticulate") {
  reticulate::py_run_file(".github/debug/botorch_repro.py")
} else {
  library(mlr3)
  library(mlr3extralearners)
  task = tsk("mtcars")
  for (k in c("matern_2.5", "matern_1.5", "matern_0.5", "rbf")) {
    learner = lrn("regr.botorch_singletaskgp", kernel = k)
    learner$train(task)
    print(learner$predict(task)$score())
  }
}
cat(mode, "OK\n")
