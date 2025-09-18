skip_if_not_installed("crs")

test_that("autotest", {
  learner = lrn("regr.crs")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "single_factor || single_ordered")
  # crs can't handle tasks with only one feature
  expect_true(result)
})
