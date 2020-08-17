install_learners("classif.PART")

skip_on_os("windows")

test_that("autotest", {
  learner = LearnerClassifPART$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
