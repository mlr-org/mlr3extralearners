test_that("autotest", {
  skip_if_not_installed("pendensity")
  learner = lrn("dens.pen")
  expect_learner(learner)
  capture.output({
    result = run_autotest(learner)
  })
  expect_true(result, info = result$error)
})
