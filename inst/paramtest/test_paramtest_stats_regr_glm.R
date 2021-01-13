library(mlr3extralearners)
install_learners("regr.glm")

test_that("regr.glm train", {
  learner = lrn("regr.glm")
  fun = stats::glm
  exclude = c(
    "formula", # handled by mlr3
    "data", # handled by mlr3
    "weights", # handled by mlr3
    "subset", # handled by mlr3
    "method", # we always use glm()
    "control", # handled by glm.control
    "contrasts" # causes lots of troubles just when setting the default
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("regr.glm predict", {
  learner = lrn("regr.glm")
  fun = stats::predict
    exclude = c(
      "object", # handled via mlr3
      "newdata" # handled via mlr3
    )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("regr.glm control", {
  learner = lrn("regr.glm")
  fun = stats:::glm.control
  exclude = c(
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

