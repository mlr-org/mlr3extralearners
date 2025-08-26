skip_if_not_installed("sda")

test_that("autotest", {
  learner = lrn("classif.sda")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  capture.output({
    result = run_autotest(learner)
  })
  expect_true(result, info = result$error)
})
