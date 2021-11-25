install_learners("classif.earth")

  test_that("autotest", {
    learner = lrn("classif.earth")
    expect_learner(learner)
    result = run_autotest(learner)
    expect_true(result, info = result$error)
  })

test_that("classif.earth", {
  learner = lrn("classif.earth")
  fun = earth:::earth.default
  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "subset", # handled internally
    "weights", # handled internally
    "na.action", # only one option
    "glm" # handled internally
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("Missing parameters:",
    paste0("- '", ParamTest$missing, "'", collapse = "")))
})

test_that("classif.earth predict", {
  learner = lrn("classif.earth")
  fun = earth:::predict.earth
  exclude = c(
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "interval", # unused
    "level" # unused
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0("\nMissing parameters:\n",
                                       paste0("- '", ParamTest$missing, "'", collapse = "\n")))
})
