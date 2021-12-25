install_learners("classif.cforest")

test_that("autotest", {
  learner = LearnerClassifCForest$new()
  learner$param_set$values = list(ntree = 30L)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("parameter setting works", {
  learner = LearnerClassifCForest$new()
  learner$param_set$values$ntree = 3
  learner$param_set$values$replace = TRUE
  learner$param_set$values$fraction = 0.7
  learner$param_set$values$teststat = "maximum"
  learner$param_set$values$OOB = TRUE
  task = tsk("iris")
  learner$train(task)
  expect_equal(length(learner$model$nodes), 3L)
  expect_equal(learner$model$info$control$teststat, "maximum")
})

test_that("classif.cforest", {
  learner = lrn("classif.cforest")
  fun_list = list(partykit::cforest, partykit::ctree_control)
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "weights", # handled in mlr3
    "subset", # handled in mlr3
    "strata", # FIXME: handled in mlr3?
    "na.action", # handled in mlr3
    "control", # handled in partykit::ctree_control
    "ytrafo", # handled in mlr3pipelines
    "perturb", # handled separately
    "mtry", # passed directly
    "applyfun", # passed directly
    "cores" # passed directly
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})

test_that("classif.cforest_control", {
  learner = lrn("classif.cforest")
  fun = partykit::ctree_control
  exclude = c(
    "mtry", # passed directly
    "applyfun", # passed directly
    "cores" # passed directly
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
