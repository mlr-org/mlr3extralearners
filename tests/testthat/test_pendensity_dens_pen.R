install_learners("dens.pen")
load_tests("dens.pen")

test_that("autotest", {
  learner = lrn("dens.pen")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("dens.pen", {
  learner = lrn("dens.pen")
  fun_list = list(pendensity::pendensity)
  exclude = c(
    "form", # handled internally
    "data" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})
