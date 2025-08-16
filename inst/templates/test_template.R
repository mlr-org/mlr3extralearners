# TODO: Fill this out with the learner packages
skip_if_not_installed()

test_that("autotest", {
  learner = lrn("<type>.<key>")
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
