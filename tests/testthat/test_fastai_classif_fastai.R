skip_if_not_installed("fastai")
skip_if_not_installed("reticulate")

test_that("autotest", {
  learner = lrn("classif.fastai", layers = c(200, 100))
  expect_learner(learner, check_man = FALSE)
  # results not replicable, because torch seed must be set in the python backend
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("eval protocol", {
  learner = lrn("classif.fastai")
  task = tsk("sonar")
  learner$train(task)
  expect_true(is.list(learner$model$eval_protocol))
})


test_that("validation and inner tuning works", {
  task = tsk("spam")

  # with n_epoch and patience parameter
  learner = lrn("classif.fastai",
    n_epoch = 10,
    patience = 1,
    validate = 0.2
  )

  learner$train(task)
  expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "accuracy"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "accuracy")
  expect_list(learner$internal_tuned_values, types = "integerish")
  expect_equal(names(learner$internal_tuned_values), "n_epoch")

  # without validate parameter
  learner$validate = NULL
  expect_error(learner$train(task), "field 'validate'")

  # with patience parameter
  learner = lrn("classif.fastai",
    n_epoch = 10,
    validate = 0.2
  )

  learner$train(task)
  expect_equal(learner$internal_tuned_values, NULL)
  expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "accuracy"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "accuracy")

  # internal tuning
  learner = lrn("classif.fastai",
    n_epoch = to_tune(upper = 20, internal = TRUE),
    validate = 0.2
  )
  s = learner$param_set$search_space()
  expect_error(learner$param_set$convert_internal_search_space(s), "patience")
  learner$param_set$set_values(patience = 10)
  learner$param_set$disable_internal_tuning("n_epoch")
  expect_equal(learner$param_set$values$patience, NULL)

  learner = lrn("classif.fastai",
    n_epoch = 20,
    patience = 5,
    validate = 0.3
  )
  learner$train(task)
  expect_equal(learner$internal_valid_scores$accuracy, learner$model$eval_protocol$accuracy[learner$internal_tuned_values$n_epoch])

  # no validation and no internal tuning
  learner = lrn("classif.fastai")
  learner$train(task)
  expect_null(learner$internal_valid_scores)
  expect_null(learner$internal_tuned_values)

  # no tuning without patience parameter
  learner = lrn("classif.fastai", validate = 0.3, n_epoch = 10)
  learner$train(task)
  expect_equal(learner$internal_valid_scores$accuracy, learner$model$eval_protocol$accuracy[10L])
  expect_null(learner$internal_tuned_values)
})

test_that("custom inner validation measure", {
  # internal measure
  task = tsk("sonar")

  learner = lrn("classif.fastai",
    n_epoch = 10,
    validate = 0.2,
    patience = 1,
    eval_metric = fastai::error_rate()
  )

  learner$train(task)

  expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "error_rate"))
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "error_rate")

  # binary task and mlr3 measure binary response
  task = tsk("sonar")

  learner = lrn("classif.fastai",
    n_epoch = 10,
    validate = 0.2,
    #patience = 1,
    eval_metric = msr("classif.ce")
  )

  learner$train(task)

  expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.ce"))
  expect_numeric(learner$model$eval_protocol$classif.ce, len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.ce")

  # binary task and mlr3 measure binary prob
  task = tsk("sonar")

  learner = lrn("classif.fastai",
    n_epoch = 10,
    validate = 0.2,
    #patience = 1,
    predict_type = "prob",
    eval_metric = msr("classif.logloss")
  )

  learner$train(task)

  expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.logloss"))
  expect_numeric(learner$model$eval_protocol$classif.logloss, len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.logloss")

  # binary task and mlr3 measure multiclass prob
  task = tsk("sonar")

  learner = lrn("classif.fastai",
    n_epoch = 10,
    validate = 0.2,
   # patience = 1,
    predict_type = "prob",
    eval_metric = msr("classif.auc")
  )

  learner$train(task)

  expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.auc"))
  expect_numeric(learner$model$eval_protocol$classif.auc, len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.auc")

  # multiclass task and mlr3 measure multiclass response
  task = tsk("iris")

  learner = lrn("classif.fastai",
    n_epoch = 10,
    validate = 0.2,
    #patience = 1,
    predict_type = "prob",
    eval_metric = msr("classif.ce")
  )

  learner$train(task)

  expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.ce"))
  expect_numeric(learner$model$eval_protocol$classif.ce, len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.ce")

  # multiclass task and mlr3 measure multiclass prob
  task = tsk("iris")

  learner = lrn("classif.fastai",
    n_epoch = 10,
    validate = 0.2,
    # patience = 1,
    predict_type = "prob",
    eval_metric = msr("classif.logloss")
  )

  learner$train(task)

  expect_named(learner$model$eval_protocol, c("epoch", "train_loss", "valid_loss", "classif.logloss"))
  expect_numeric(learner$model$eval_protocol$classif.logloss, len = 10)
  expect_list(learner$internal_valid_scores, types = "numeric")
  expect_equal(names(learner$internal_valid_scores), "classif.logloss")
})

test_that("marshaling works for classif.fastai", {
  learner = lrn("classif.fastai")
  task = tsk("iris")
  # expect_marshalable_learner(learner, task)

  learner$train(task)
  pred = learner$predict(task)
  model = learner$model
  class_prev = class(model)

  # checks for marshaling is the same as expect_marshalable_learner
  expect_false(learner$marshaled)
  expect_equal(is_marshaled_model(learner$model), learner$marshaled)
  expect_invisible(learner$marshal())
  expect_equal(mlr3::is_marshaled_model(learner$model), learner$marshaled)

  # checks for unmarshaling differs -- instead of checking equality of model,
  # we check equality of predictions, because expect_equal() on python objects
  # checks the pointer which almost always changes after unmarshaling
  expect_invisible(learner$unmarshal())
  expect_prediction(learner$predict(task))
  expect_equal(learner$predict(task), pred)
  expect_false(learner$marshaled)
  expect_equal(class(learner$model), class_prev)
})

