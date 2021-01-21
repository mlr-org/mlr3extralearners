install_learners("<type>.<key>")
load_tests("<type>.<key>")

test_that("autotest", {
  learner = lrn("<type>.<key>")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
