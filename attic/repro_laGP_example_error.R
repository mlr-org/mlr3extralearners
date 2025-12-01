# Minimal repro for the laGP example failure on small train splits
# Fails with: "start >= end or nrow(X) <= end, so nothing to do"

if (!requireNamespace("laGP", quietly = TRUE)) {
  stop("laGP is not installed; install it to reproduce.")
}

library(mlr3)
library(mlr3extralearners)

task = tsk("mtcars")
ids = partition(task)

learner = lrn("regr.laGP")  # uses default end = 50

cat("Training on", length(ids$train), "rows; end =", learner$param_set$values$end %||% 50, "\n")

learner$train(task, row_ids = ids$train)

print(learner$model)

# This predict call triggers the laGP error because n_train < end
learner$predict(task, row_ids = ids$test)
