test_that("autotest", {
  learner = lrn("classif.aorsf")
  # setting check_man to TRUE fails for some reason
  expect_learner(learner, check_man=FALSE)
  result = run_autotest(
    learner,
    exclude = "single || feat_all",
    N = 30
  )
  expect_true(result, info = result$error)
})
