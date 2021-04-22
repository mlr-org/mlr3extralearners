install_learners("classif.J48")

skip_on_os("windows")

test_that("autotest", {
  set.seed(1)
  learner = LearnerClassifJ48$new()
  expect_learner(learner)
  result = run_autotest(learner, exclude = "missing-each-row-binary")
  expect_true(result, info = result$error)
})
