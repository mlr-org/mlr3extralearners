skip_if_not_installed("sda")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("classif.sda")
  expect_learner(learner)
  capture.output({
    result = run_autotest(learner)
  })
  expect_true(result, info = result$error)
})
