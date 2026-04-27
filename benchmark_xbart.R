remotes::install_github("AntoineDbn/mlr3extralearners@add-xbart-learner")
remotes::install_github("JingyuHe/XBART")
install.packages(c("mlr3", "mlr3learners", "mlr3viz", "glmnet", "kknn"),
                 repos = "https://cloud.r-project.org")

library(mlr3)
library(mlr3learners)
library(mlr3extralearners)
library(mlr3viz)

set.seed(42)

task_attitude = as_task_regr(attitude, target = "rating", id = "attitude")
task_mtcars   = tsk("mtcars")

tasks = list(task_attitude, task_mtcars)
learners = list(
  lrn("regr.featureless"),
  lrn("regr.cv_glmnet"),
  lrn("regr.kknn"),
  lrn("regr.xbart")
)
resampling = rsmp("cv", folds = 5)
bmr = benchmark(benchmark_grid(tasks, learners, resampling))
autoplot(bmr, measure = msr("regr.rmse"))
