install_learners("dens.mixed")
load_tests("dens.mixed")

test_that("autotest", {
  learner = LearnerDensMixed$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("dens.mixed", {
  learner = lrn("dens.mixed")
  fun_list = list(np::npudens, np:::npudensbw.default)

  exclude = c(
    "dat", # handled by mlr3
    "scale.init.categorical.sample" # not implemented by the author
  )
  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
