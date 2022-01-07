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
  fun_list = list(partykit::cforest, partykit::ctree_control, partykit::varimp.cforest,
    partykit::predict.cforest
  )
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
    "cores", # passed directly
    "replace", # perturb = list(replace, fraction)
    "fraction", # perturb = list(replace, fraction)
    "object", # handled internally
    "mtryratio", # added as alternative to mtry
    "newdata", # handled internally
    "type", # handled by mlr3
    "FUN" # summary statistics are handled by mlr3 with measures
  )

  paramtest = run_paramtest(learner, fun_list, exclude)
  expect_paramtest(paramtest)
})
