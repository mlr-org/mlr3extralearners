install_learners("surv.deephit")

skip_on_os("windows")

if (!reticulate::py_module_available("torch") || !reticulate::py_module_available("pycox") ||
    !reticulate::py_module_available("numpy"))
  skip("One of torch, numpy, pycox not available for testing.")

np = reticulate::import("numpy")
torch = reticulate::import("torch")
set.seed(1)
np$random$seed(1L)
torch$manual_seed(1L)

test_that("autotest", {
  learner = lrn("surv.deephit", epochs = 50)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("manual sanity", {
  learner = lrn("surv.deephit", epochs = 50)
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
