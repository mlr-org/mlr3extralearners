install_learners("dens.kde_kd")
load_tests("dens.kde_kd")

test_that("autotest", {
  learner = LearnerDensKDEkd$new()
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("dens.kde_kd", {
  learner = lrn("dens.kde_kd")
  fun = kerdiest::kde
  exclude = c(
    "vec_data", # handled by predict
    "y" # handled by predict
  )

  paramtest = run_paramtest(learner, fun, exclude)
  expect_paramtest(paramtest)
})
