test_that("autotest", {
  learner = lrn("classif.fastai")
  expect_learner(learner, check_man = FALSE)
  # results not replicable, because torch seed must be set in the python backend
  result = run_autotest(learner, check_replicable=FALSE)
  expect_true(result, info = result$error)
})
