install_learners("surv.dnnsurv")

skip_on_os("windows")

test_that("autotest", {
  set.seed(10)
  learner <- lrn("surv.dnnsurv", cuts = 5)
  expect_learner(learner)
  result <- run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("manual sanity", {
  learner = lrn("surv.dnnsurv", epochs = 50)
  x = runif(100,0,10)
  task = TaskSurv$new("sanity",
                      data.frame(x = x,
                                 time = x + rnorm(100),
                                 status = rbinom(100, 1, 0.5)),
                      time = "time", event = "status")
  p = learner$train(task)$predict(task)
  expect_true(p$score() >= 0.5)
  expect_equal(rank(-p$crank), unname(rank(p$distr$mean())))
})