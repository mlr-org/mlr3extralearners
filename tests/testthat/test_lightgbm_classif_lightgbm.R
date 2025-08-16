skip_if_not_installed("lightgbm")

test_that("autotest", {
  withr::local_seed(1)
  learner = lrn("classif.lightgbm", num_iterations = 50)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("Can pass parameters", {
  task = tsk("iris")
  learner = lrn("classif.lightgbm", num_iterations = 5L, max_bin = 10L)
  expect_warning(learner$train(task), regexp = NA)
})

test_that("hotstarting works", {
  task = tsk("sonar")
  learner = lrn("classif.lightgbm", num_iterations = 2000L)
  learner$train(task)
  stack = HotstartStack$new(list(learner))
  learner_hs = lrn("classif.lightgbm", num_iterations = 2001L)
  learner_hs$hotstart_stack = stack
  learner_hs$train(task)
  expect_class(get_private(learner_hs$model)$init_predictor, "lgb.Predictor")
})

test_that("early stopping works", {
  learner = lrn("classif.lightgbm", num_iterations = 1000, early_stopping_rounds = 10)
  learner$validate = 0.2
  task = tsk("pima")

  learner$train(task)

  expect_list(learner$internal_tuned_values)
  expect_number(learner$internal_tuned_values$num_iterations)

  expect_list(learner$internal_valid_scores)
  expect_number(learner$internal_valid_scores$binary_logloss)

  learner = lrn("classif.lightgbm", num_iterations = 1000, early_stopping_rounds = 10, eval = list("l1", "l2"))
  learner$validate = 0.2
  learner$train(task)

  expect_list(learner$internal_valid_scores)
  expect_number(learner$internal_valid_scores$l1)
  expect_number(learner$internal_valid_scores$l2)
})

test_that("custom inner validation measure", {

  # internal measure
  task = tsk("sonar")

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    eval = "binary_logloss"
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "binary_logloss")
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "binary_logloss")

  # function
  task = tsk("sonar")

  error_metric = function(preds, dtrain) {
    labels = lightgbm::get_field(dtrain, "label")
    err = sum(labels != (preds > 0.5)) / length(labels)
    return(list(name = "error", value = err, higher_better = FALSE))
  }

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    eval = error_metric
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "error")
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "error")


  # binary task and mlr3 measure binary response
  task = tsk("sonar")

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    eval = msr("classif.ce")
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "classif.ce")
  expect_list(learner$model$record_evals$test$classif.ce$eval, types = "numeric", , len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.ce")

  # binary task and mlr3 measure binary prob
  task = tsk("sonar")

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    predict_type = "prob",
    eval = msr("classif.logloss")
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "classif.logloss")
  expect_list(learner$model$record_evals$test$classif.logloss$eval, types = "numeric", , len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.logloss")

  # multiple measures
  task = tsk("sonar")

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    predict_type = "prob",
    eval = list(msr("classif.logloss"), "binary_error")
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, c("binary_error", "classif.logloss"))
  expect_list(learner$model$record_evals$test$binary_error$eval, types = "numeric", , len = 10)
  expect_list(learner$model$record_evals$test$classif.logloss$eval, types = "numeric", , len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), c("binary_error", "classif.logloss"))

  # binary task and mlr3 measure multiclass prob
  task = tsk("sonar")

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    predict_type = "prob",
    eval = msr("classif.auc")
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "classif.auc")
  expect_list(learner$model$record_evals$test$classif.auc$eval, types = "numeric", , len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.auc")

  # multiclass task and mlr3 measure multiclass response
  task = tsk("iris")

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    predict_type = "prob",
    eval = msr("classif.ce")
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "classif.ce")
  expect_list(learner$model$record_evals$test$classif.ce$eval, types = "numeric", , len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.ce")

  # multiclass task and mlr3 measure multiclass prob
  task = tsk("iris")

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    predict_type = "prob",
    eval = msr("classif.logloss")
  )

  learner$train(task)

  expect_named(learner$model$record_evals$test, "classif.logloss")
  expect_list(learner$model$record_evals$test$classif.logloss$eval, types = "numeric", , len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.logloss")
})

test_that("mlr3measures are equal to internal measures", {
  # response
  withr::local_seed(1)
  task = tsk("sonar")

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    eval = list(msr("classif.ce"))
  )

  learner$train(task)
  log_mlr3 = as.numeric(learner$model$record_evals$test$classif.ce$eval)

  withr::local_seed(1)
  learner$param_set$set_values(eval = list("binary_error"))
  learner$train(task)

  log_internal = as.numeric(learner$model$record_evals$test$binary_error$eval)

  expect_equal(log_mlr3, log_internal)

  # prob
  withr::local_seed(1)
  task = tsk("sonar")

  learner = lrn("classif.lightgbm",
    num_iterations = 10,
    validate = 0.2,
    early_stopping_rounds = 10,
    predict_type = "prob",
    eval = list(msr("classif.auc"))
  )

  learner$train(task)
  log_mlr3 = as.numeric(learner$model$record_evals$test$classif.auc$eval)

  withr::local_seed(1)
  learner$param_set$set_values(eval = list("auc"))
  learner$train(task)

  log_internal = as.numeric(learner$model$record_evals$test$auc$eval)

  expect_equal(log_mlr3, log_internal)

  # multiclass response
  withr::local_seed(1)
  task = tsk("iris")

  learner = lrn("classif.lightgbm",
    num_iterations = 100,
    validate = 0.2,
    early_stopping_rounds = 100,
    eval = list(msr("classif.ce"))
  )

  learner$train(task)
  log_mlr3 = as.numeric(learner$model$record_evals$test$classif.ce$eval)

  withr::local_seed(1)
  learner$param_set$set_values(eval = list("multi_error"))
  learner$train(task)

  log_internal = as.numeric(learner$model$record_evals$test$multi_error$eval)

  expect_equal(log_mlr3, log_internal)

  # multiclass prob
  withr::local_seed(1)
  task = tsk("iris")

  learner = lrn("classif.lightgbm",
    num_iterations = 30,
    validate = 0.2,
    early_stopping_rounds = 30,
    predict_type = "prob",
    eval = list(msr("classif.logloss"))
  )

  learner$train(task)
  log_mlr3 = as.numeric(learner$model$record_evals$test$classif.logloss$eval)

  withr::local_seed(1)
  learner$param_set$set_values(eval = list("multi_logloss"))
  learner$train(task)

  log_internal = as.numeric(learner$model$record_evals$test$multi_logloss$eval)

  expect_equal(log_mlr3, log_internal)
})


test_that("#437", {
  lr = lrn("classif.lightgbm", predict_type = "prob")
  lr$encapsulate("callr", lrn("classif.featureless", predict_type = "prob"))
  pred = lr$train(tsk("iris"))$predict(tsk("iris"))
  expect_equal(mean(rowSums(pred$prob)), 1)
})
