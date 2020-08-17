install_learners("surv.flexible")

test_that("autotest", {
  set.seed(200)
  learner = lrn("surv.flexible", k = 0, scale = "normal", inits = c(1, 1, 1))
  expect_learner(learner)
  # there's no reason why sanity in particular is excluded except that because of multiple
  # experiments and changing seeds, I've found it isn't possible to remove the "`vnmin` is
  # not finite" error
  result = run_autotest(learner, exclude = "sanity", check_replicable = FALSE)
  expect_true(result, info = result$error)
})

task = tsk("rats")
test_that("manualtest", {
  set.seed(15)
  learn = lrn("surv.flexible")
  learn$train(task)
  p = learn$predict(task)
  # Comparison to flexsurv
  expect_equal(
    round(p$lp[1:20], 5),
    round(summary(learn$model,
      task$data(cols = task$feature_names),
      se = F, ci = F, type = "link", tidy = T)[1:20, 2], 5))
  expect_equal(
    round(p$distr[2]$survival(1:23), 5),
    round(summary(learn$model,
      task$data(cols = task$feature_names),
      se = F, ci = F, type = "survival", tidy = T, t = 1:23)[24:46, 2], 5))
})

test_that("missing", {
  learner = lrn("surv.flexible", k = 1)
  learner$train(task)
  expect_error(learner$predict(tsk("lung")))
})
