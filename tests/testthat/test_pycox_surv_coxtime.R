install_learners("surv.coxtime")

test_that("autotest", {
  learner = LearnerSurvCoxtime$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

task = tgen("simsurv")$generate(50)

test_that("standardise", {
  learner = lrn("surv.coxtime", standardize_time = TRUE, num_nodes = c(2, 2))
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})

test_that("activation", {
  learner = lrn("surv.coxtime", activation = "elu", num_nodes = c(2, 2))
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})

test_that("optimiser", {
  learner = lrn("surv.coxtime", optimizer = "adadelta", eps = 1e-3, num_nodes = c(2, 2))
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})

test_that("learning rate", {
  learner = lrn("surv.coxtime",
    optimizer = "adam", eps = 1e-3, num_nodes = c(2, 2),
    lr_finder = TRUE)
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})

test_that("early stopping", {
  learner = lrn("surv.coxtime", early_stopping = TRUE, num_nodes = c(2, 2))
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})

test_that("dropout", {
  learner = lrn("surv.coxtime", dropout = 0.1, num_nodes = c(2, 2))
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})
