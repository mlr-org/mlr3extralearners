library(mlr3extralearners)
install_learners("dens.kde_kd")

test_that("dens.kde_kd", {
  learner = lrn("dens.kde_kd")
  fun = kerdiest::kde
  exclude = c(
    "vec_data", # handled by predict
    "y" # handled by predict
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
