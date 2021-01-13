install_learners("classif.earth")

test_that("autotest", {
  learner = lrn("classif.earth")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
