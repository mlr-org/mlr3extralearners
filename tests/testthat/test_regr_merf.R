library(mlr3)
library(checkmate)


# Test 1  train + predict avec une tache invalide ici

test_that("regr.merf trains and predicts with valid task", {

  set.seed(123)

  data = data.frame(
    x1   = runif(30),
    x2   = runif(30),
    grp  = rep(1:3, each = 10),
    time = rep(1:10, times = 3),
    y    = runif(30)
  )

  task = mlr3::as_task_regr(data, target = "y", id = "test")
  task$col_roles$group   = "grp"
  task$col_roles$order   = "time"
  task$col_roles$feature = setdiff(task$feature_names, c("grp", "time"))

  learner = LearnerRegrMERF$new()
  learner$param_set$values$time_col = "time"

  expect_no_error(learner$train(task))
  expect_false(is.null(learner$model))

  p = learner$predict(task)
  expect_numeric(p$response, len = 30, any.missing = FALSE)
})


# Test 2 on teste si erreur si pas de group role

test_that("regr.merf errors without group role", {

  set.seed(123)

  data = data.frame(
    x    = runif(10),
    time = 1:10,
    y    = runif(10)
  )

  task = mlr3::as_task_regr(data, target = "y", id = "nogroup")

  learner = LearnerRegrMERF$new()
  learner$param_set$values$time_col = "time"

  expect_error(learner$train(task), "group")
})


# Test 3 : erreur si time_col manquant

test_that("regr.merf errors without time_col", {

  set.seed(123)

  data = data.frame(
    x   = runif(10),
    grp = rep(1:2, each = 5),
    y   = runif(10)
  )

  task = mlr3::as_task_regr(data, target = "y", id = "notime")
  task$col_roles$group   = "grp"
  task$col_roles$feature = setdiff(task$feature_names, "grp")

  learner = LearnerRegrMERF$new()
  # la colonne time_col n'a pas ete mentionner ici volontairement roberto

  expect_error(learner$train(task), "time_col")
})

