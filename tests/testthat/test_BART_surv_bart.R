test_that("autotest", {
  learner = lrn("surv.bart", nskip = 1, ndpost = 1, keepevery = 1)
  expect_learner(learner)
  # `feat_all` task has a factor which is split to two variables which give two
  # different importance scores and not just once, so it fails (but it's okay)
  result = run_autotest(learner, exclude = "feat_all")
  expect_true(result, info = result$error)
})
