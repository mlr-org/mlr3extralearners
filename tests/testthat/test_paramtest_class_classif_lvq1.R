skip_if_not_installed("class")

test_that("paramtest classif.lvq1 train", {
  learner = lrn("classif.lvq1")
  fun_list = list(class::lvqinit, class::lvq1)
  exclude = c(
    "x", # handled internally
    "cl", # handled internally
    "codebk" # handled internally
  )

  paramtest = run_paramtest(learner, fun_list, exclude, tag = "train")
  expect_paramtest(paramtest)
})
