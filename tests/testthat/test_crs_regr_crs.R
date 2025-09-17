skip_if_not_installed("crs")

test_that("autotest", {
  learner = lrn("regr.crs")
  expect_learner(learner, check_man = FALSE)
  result = run_autotest(learner, exclude = "single_factor || single_ordered")
  expect_true(result)
})
