library(mlr3extralearners)
mlr3extralearners::install_learners("dens.mixed")

test_that("dens.mixed", {
  learner = lrn("dens.mixed")
  fun = np::npudens
  exclude = c(

  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
    paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})

test_that("dens.mixed_bw", {
  learner = lrn("dens.mixed")
  fun = np::npudensbw
  exclude = c(

  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
