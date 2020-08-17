install_learners("classif.rfsrc")

test_that("autotest", {
  learner = lrn("classif.rfsrc")
  learner$param_set$values = list(
    importance = "random", na.action = "na.impute",
    do.trace = TRUE)
  expect_learner(learner)
  set.seed(1)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("importance/selected", {
  set.seed(1)
  task = tsk("iris")
  learner = lrn("classif.rfsrc")
  learner$train(task)
  expect_error(learner$importance(), "Set 'importance'")
  expect_error(learner$selected_features(), "Set 'var.used'")
})
