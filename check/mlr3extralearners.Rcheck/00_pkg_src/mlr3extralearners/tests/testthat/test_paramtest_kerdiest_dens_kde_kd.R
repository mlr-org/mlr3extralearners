install_learners("dens.kde_kd")
load_tests("dens.kde_kd")

test_that("paramtest dens.kde_kd train", {
  learner = lrn("dens.kde_kd")
  fun = kerdiest::kde
  exclude = c(
    "vec_data", # handled by predict
    "y" # handled by predict
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

# no predict time parameters
