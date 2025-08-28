skip_if_not_installed("evtree")

test_that("autotest", {
  withr::local_seed(2)
  learner = lrn("classif.evtree", minsplit = 5L, minbucket = 2L)
  expect_learner(learner)
  # note that you can skip tests using the exclude argument
  result = run_autotest(learner, N = 50)
  expect_true(result, info = result$error)
})
