install_learners("classif.lightgbm")
load_tests("classif.lightgbm")

test_that("autotest", {
  set.seed(1)
  learner = lrn("classif.lightgbm", nrounds = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("manual validation binary", {
  learner = lrn("classif.lightgbm", early_stopping_rounds = 1)
  task = tsk("sonar")
  expect_error(learner$train(task))
  task$row_roles$validation = sample(seq(task$nrow), task$nrow * 0.3)
  expect_silent(learner$train(task))
})

test_that("manual validation multiclass", {
  learner = lrn("classif.lightgbm", early_stopping_rounds = 1)
  task = tsk("iris")
  expect_error(learner$train(task))
  task$row_roles$validation = sample(seq(task$nrow), task$nrow * 0.3)
  expect_silent(learner$train(task))
})
