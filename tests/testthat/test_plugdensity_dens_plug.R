test_that("autotest", {
  skip_if_not_installed("plugdensity")
  withr::local_seed(1)
  learner = lrn("dens.plug")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
