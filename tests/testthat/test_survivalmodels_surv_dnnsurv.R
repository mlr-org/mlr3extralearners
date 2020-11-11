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
  task = tsk('rats')$select(c("rx", "litter"))
  learner = lrn("surv.dnnsurv")
  p = learner$train(task)$predict(task)
  # expect_true(p$score() >= 0.5)
  expect_equal(rank(-p$crank), unname(rank(p$distr$mean())))
})

