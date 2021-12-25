install_learners("regr.mars")
load_tests("regr.mars")

test_that("autotest", {
  learner = lrn("regr.mars")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.mars train", {
  learner = lrn("regr.mars")
  fun_list = list(mda::mars, mda:::predict.mars)
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "w", # handled internally
    "wp", # ignored
    "prevfit", # ignored
    "object", # handled internally
    "newdata" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

