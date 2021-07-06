install_learners("regr.rweka")

skip_on_os("windows")

set.seed(12)

test_that("autotest - IBk", {
  learner = lrn("regr.rweka", model = "IBk")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("autotest - M5Rules", {
  learner = lrn("regr.rweka", model = "M5Rules")
  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})
