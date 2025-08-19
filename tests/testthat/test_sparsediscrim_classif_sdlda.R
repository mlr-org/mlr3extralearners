skip_if_not_installed("sparsediscrim")

test_that("autotest", {
  learner = lrn("classif.sdlda")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
