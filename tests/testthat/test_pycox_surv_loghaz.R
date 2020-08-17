install_learners("surv.loghaz")

test_that("autotest", {
  learner = LearnerSurvLogisticHazard$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("custom net", {
  net = build_pytorch_net(3L, 10L, nodes = c(2, 4, 8, 32), activation = "elu")
  learner = lrn("surv.loghaz", custom_net = net)
  task = tgen("simsurv")$generate(30)
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
  expect_equal(learner$model$model$net, net)
})

test_that("interpolate", {
  learner = lrn("surv.loghaz", interpolate = TRUE)
  task = tgen("simsurv")$generate(50)
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})

test_that("validation set", {
  learner = lrn("surv.loghaz", frac = 0.2)
  task = tgen("simsurv")$generate(50)
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})
