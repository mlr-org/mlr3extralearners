install_learners("classif.gbm")


test_that("autotest", {
  learner = LearnerClassifGBM$new()
  learner$param_set$values = mlr3misc::insert_named(
    learner$param_set$values,
    list(n.minobsinnode = 1))
  expect_learner(learner)
  result = run_autotest(learner, exclude = "feat_single_multiclass || weights_binary")
  expect_true(result, info = result$error)
})

test_that("classif.gbm", {
  learner = lrn("classif.gbm")
  fun_list = list(gbm::gbm, gbm::predict.gbm)
  exclude = c(
    "formula", # handled by mlr3
    "data", # handled by mlr3
    "weights", # handled by mlr3
    "class.stratify.cv", # handled by mlr3
    "single.tree", # we don't allow for single trees
    "newdata", # handled by mlr3
    "object", # handled by mlr3
    "type" # we only allow type "link" to get the response prediction
  )

  param_test = run_paramtest(learner, fun_list, exclude)
  expect_true(param_test)
})
