skip_if_not_installed("laGP")

test_that("autotest", {
  learner = lrn("regr.laGP", end = 15) # I need to use sensible values here -> check with Marc?; with 15 it works
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result)
})
