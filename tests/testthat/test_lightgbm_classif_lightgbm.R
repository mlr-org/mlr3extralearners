test_that("autotest", {
  set.seed(1)
  learner = lrn("classif.lightgbm", num_iterations = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("manual validation binary", {
  learner = lrn("classif.lightgbm", early_stopping_rounds = 1, early_stopping_split = 0.2)
  task = tsk("sonar")
  expect_error(learner$train(task), regexp = NA)
  # TODO: Fix with test validation renaming
  task$row_roles$holdout = sample(seq(task$nrow), task$nrow * 0.3)
  expect_true(inherits(learner$train(task)$predict(task), "PredictionClassif"))
})

test_that("manual validation multiclass", {
  learner = lrn("classif.lightgbm", early_stopping_rounds = 1, early_stopping_split = 0.3)
  task = tsk("iris")
  expect_error(learner$train(task), regexp = NA)
  # TODO: Fix with test validation renaming
  task$row_roles$holdout = sample(seq(task$nrow), task$nrow * 0.3)
  expect_true(inherits(learner$train(task)$predict(task), "PredictionClassif"))
})


test_that("Can pass parameters", {
  task = tsk("iris")
  learner = lrn("classif.lightgbm", num_iterations = 5L, max_bin = 10L)
  expect_warning(learner$train(task), regexp = NA)
})

test_that("categorical_feature works correctly", {

  dat1 = data.table::data.table(
    y = factor(sample(c("hello", "world", 100, TRUE))),
    x_dbl = rnorm(100),
    x_fct = factor(sample(letters, 100, TRUE)),
    x_lgl = sample(c(TRUE, FALSE), 100, TRUE)
  )

  dat2 = dat1
  dat2$x_fct = as.integer(dat2$x_fct)
  dat2$x_lgl = as.integer(dat2$x_lgl)

  task1 = as_task_classif(dat1, target = "y")
  task2 = as_task_classif(dat2, target = "y")

  # we test that:
  # 1. Manually converting + giving the categorical_feature is the same as setting
  # convert_categorical to TRUE
  # 2.

  set.seed(1)
  learner = lrn("classif.lightgbm")
  learner$train(task1)
  p1 = learner$predict(task1)

  set.seed(1)
  learner = lrn("classif.lightgbm", convert_categorical = FALSE,
    categorical_feature = c("x_lgl", "x_fct")
  )
  learner$train(task2)
  p2 = learner$predict(task2)

  expect_true(all.equal(p1, p2))

  set.seed(1)
  learner = lrn("classif.lightgbm", convert_categorical = FALSE)
  learner$train(task2)
  p2wrong = learner$predict(task2)
  expect_true(is.character(all.equal(p2, p2wrong)))
})

test_that("hotstarting works", {
  task = tsk("iris")
  learner = lrn("classif.lightgbm", num_iterations = 2000L)
  learner$train(task)
  stack = HotstartStack$new(list(learner))
  learner_hs = lrn("classif.lightgbm", num_iterations = 2001L)
  learner_hs$hotstart_stack = stack
  expect_true(is.null(get_private(learner_hs$model)$init_predictor))
})


test_that("Can pass categorical_feature and convert_categorical = TRUE", {
  n = 500
  x1 = sample.int(100, 500, replace = TRUE)
  x2 = as.factor(sample.int(10, n, replace = TRUE))
  levels(x2) = letters[1:10]
  y = as.factor(sample(c("yes", "no"), n, replace = TRUE))

  dat = data.table::data.table(x1 = x1, x2 = x2, y = y)
  task = as_task_classif(dat, target = "y")

  learner1 = lrn("classif.lightgbm", categorical_feature = "x1", convert_categorical = TRUE)
  learner1$train(task)
  expect_true(length(learner1$model$params$categorical_feature) == 2L)

  learner2 = lrn("classif.lightgbm", convert_categorical = TRUE)
  learner2$train(task)
  expect_true(length(learner2$model$params$categorical_feature) == 1L)
})

test_that("Can set eval parameter", {
  evalerror <- function(preds, dtrain) {
    list(name = "hallo", value = runif(1), higher_better = TRUE)
  }
  task = tsk("iris")
  learner = lrn("classif.lightgbm", early_stopping_split = 0.2, record = TRUE,
    eval = list(evalerror, "auc_mu")
  )
  expect_error(learner$train(task), regexp = NA)
})
