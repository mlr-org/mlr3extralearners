skip_if_not_installed("BART")

test_that("autotest", {
  mirai::daemons(0, .compute = "mlr3_encapsulation")
  withr::local_seed(1)
  learner = lrn("surv.bart", nskip = 1, ndpost = 1, keepevery = 1)
  expect_learner(learner)
  capture_output({result = run_autotest(learner)})
  expect_true(result, info = result$error)
  mirai::daemons(1, .compute = "mlr3_encapsulation")
})
