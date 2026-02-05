skip_if_not_installed("fuser")

test_that("regr.fuser trains and predicts with group role", {
  set.seed(1)
  groups = rep(c("A", "B"), each = 10)
  x1 = rnorm(20)
  x2 = rnorm(20)
  y = x1 + x2 + rnorm(20, sd = 0.1)
  data = data.frame(y = y, x1 = x1, x2 = x2, group = groups)

  task = TaskRegr$new(id = "fuser_test", backend = data, target = "y")
  task$set_col_roles("group", roles = "group")

  learner = lrn("regr.fuser", lambda = 0.01, gamma = 0.01, scaling = FALSE)
  learner$train(task)
  pred = learner$predict(task)

  expect_numeric(pred$response, len = nrow(data))
  expect_equal(dim(learner$model$beta), c(2L, 2L))
})

test_that("regr.fuser validates grouping role", {
  data = data.frame(y = rnorm(10), x1 = rnorm(10), x2 = rnorm(10), group = rep(c(1, 2), each = 5))
  task = TaskRegr$new(id = "fuser_role", backend = data, target = "y")
  learner = lrn("regr.fuser", lambda = 0.01, gamma = 0.01, scaling = FALSE)
  expect_error(learner$train(task), "group", fixed = FALSE)
})

test_that("regr.fuser errors on unseen groups at predict time", {
  set.seed(2)
  data_train = data.frame(
    y = rnorm(10),
    x1 = rnorm(10),
    x2 = rnorm(10),
    group = rep(c("A", "B"), each = 5)
  )
  task_train = TaskRegr$new(id = "fuser_train", backend = data_train, target = "y")
  task_train$set_col_roles("group", roles = "group")

  learner = lrn("regr.fuser", lambda = 0.01, gamma = 0.01, scaling = FALSE)
  learner$train(task_train)

  data_test = data_train
  data_test$group[1] = "C"
  task_test = TaskRegr$new(id = "fuser_test", backend = data_test, target = "y")
  task_test$set_col_roles("group", roles = "group")
  expect_error(learner$predict(task_test), "Unknown groups", fixed = FALSE)
})

test_that("regr.fuser validates lambda and G dimensions", {
  set.seed(3)
  data = data.frame(
    y = rnorm(10),
    x1 = rnorm(10),
    x2 = rnorm(10),
    group = rep(c("A", "B"), each = 5)
  )
  task = TaskRegr$new(id = "fuser_params", backend = data, target = "y")
  task$set_col_roles("group", roles = "group")

  learner_bad_lambda = lrn("regr.fuser", lambda = c(0.01, 0.02), gamma = 0.01, scaling = FALSE)
  expect_error(learner_bad_lambda$train(task), "lambda", fixed = FALSE)

  learner_bad_g = lrn("regr.fuser", lambda = 0.01, gamma = 0.01, scaling = FALSE,
    G = matrix(1, 3, 3))
  expect_error(learner_bad_g$train(task), "G", fixed = FALSE)
})
