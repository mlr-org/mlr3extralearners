install_learners("classif.liblinear")

test_that("autotest", {
  learner = lrn("classif.liblinear")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
