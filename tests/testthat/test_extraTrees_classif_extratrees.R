install_learners("classif.extratrees")

test_that("autotest", {
  learner = lrn("classif.extratrees")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "reordered")
  expect_true(result, info = result$error)
})
