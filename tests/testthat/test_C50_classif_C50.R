install_learners("classif.C50")

test_that("autotest", {
  learner = LearnerClassifC50$new()
  learner$param_set$values <- list(trials = 30L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})


test_that("paramtest", {
  learner = lrn("classif.C50")
  fun = C50::C5.0
  exclude = c(
    "x" # handled via mlr3
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest)
})
