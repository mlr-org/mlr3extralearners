install_learners("regr.cubist")
load_tests("regr.cubist")

test_that("autotest", {
  learner = lrn("regr.cubist")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("regr.cubist train", {
  learner = lrn("regr.cubist")
  fun_list = list(Cubist::cubist, Cubist::cubistControl, Cubist:::predict.cubist,
                  Cubist:::cubist.default)
  exclude = c(
    "object", # handled by mlr3
    "newdata", # handled by mlr3
    "x", # handled by mlr3
    "y", # handled by mlr3
    "missing", # handled by mlr3
    "control", # handled by mlr3
    "weights" # handled by mlr3
  )

  param_test = run_paramtest(learner, fun_list, exclude)
  expect_true(param_test)
})

