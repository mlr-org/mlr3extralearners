install_learners("classif.earth")

test_that("autotest", {
  learner = lrn("classif.earth", varmod.method = "const", nfold = 2, ncross = 3)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("classif.earth", {
  learner = lrn("classif.earth")
  fun = earth:::earth.default
  fun_list = list(earth:::earth.default, earth:::predict.earth, earth:::earth.fit)

  exclude = c(
    "x", # handled internally
    "y", # handled internally
    "subset", # handled internally
    "weights", # handled internally
    "na.action", # only one option
    "glm", # handled internally
    "object", # handled internally
    "newdata", # handled internally
    "type", # handled internally
    "level", # unused
    "interval", # handled internally
    "Object" # only used when called by update.earth
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
