install_learners("<type>.<key>")

test_that("autotest", {
  learner = Learner<Type><Classname>$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
