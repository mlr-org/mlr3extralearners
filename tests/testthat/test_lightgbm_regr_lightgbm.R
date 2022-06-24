install_learners("regr.lightgbm")
load_tests("regr.lightgbm")

test_that("autotest", {
  set.seed(1)
  learner = lrn("regr.lightgbm", nrounds = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("manual validation", {
  learner = lrn("regr.lightgbm", early_stopping_rounds = 1, early_stopping_split = 0.1)
  task = tsk("mtcars")
  learner$train(task)
  expect_error(learner$train(task), regex = NA)
})

test_that("Can pass parameters", {
  task = tsk("iris")
  learner = lrn("classif.lightgbm", nrounds = 5L, max_bin = 10L)
  expect_warning(learner$train(task), regexp = NA)
})

test_that("categorical_feature works correctly", {

  dat1 = data.table::data.table(
    y = rnorm(100),
    x_dbl = rnorm(100),
    x_fct = factor(sample(letters, 100, TRUE)),
    x_lgl = sample(c(TRUE, FALSE), 100, TRUE)
  )

  dat2 = dat1
  dat2$x_fct = as.integer(dat2$x_fct)
  dat2$x_lgl = as.integer(dat2$x_lgl)

  task1 = as_task_regr(dat1, target = "y")
  task2 = as_task_regr(dat2, target = "y")

  # we test that:
  # 1. Manually converting + giving the categorical_feature is the same as setting
  # convert_categorical to TRUE
  # 2.

  set.seed(1)
  learner = lrn("regr.lightgbm")
  learner$train(task1)
  p1 = learner$predict(task1)

  set.seed(1)
  learner = lrn("regr.lightgbm", convert_categorical = FALSE,
    categorical_feature = c("x_lgl", "x_fct")
  )
  learner$train(task2)
  p2 = learner$predict(task2)

  expect_true(all.equal(p1, p2))

  set.seed(1)
  learner = lrn("regr.lightgbm", convert_categorical = FALSE)
  learner$train(task2)
  p2wrong = learner$predict(task2)
  expect_true(is.character(all.equal(p2, p2wrong)))
})
