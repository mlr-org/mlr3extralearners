install_learners("surv.loghaz")

test_that("autotest", {
  learner = LearnerSurvLogisticHazard$new()
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

set.seed(1)
task = TaskSurv$new("task", data.frame(x1 = rnorm(100), x2 = rgamma(100, 4), x3 = rweibull(100, 2),
                                       status = rbinom(100, 1, 0.5), time = abs(rexp(100)) + 2),
                    "time", "status")

test_that("custom net", {
  net = build_pytorch_net(3L, 10L, nodes = c(2, 4, 8, 32), activation = "elu")
  learner = lrn("surv.loghaz", custom_net = net)
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
  expect_equal(learner$model$model$net, net)
})

test_that("interpolate", {
  learner = lrn("surv.loghaz", interpolate = TRUE)
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})

test_that("validation set", {
  learner = lrn("surv.loghaz", frac = 0.2)
  expect_silent(learner$train(task))
  expect_prediction_surv(learner$predict(task))
})
