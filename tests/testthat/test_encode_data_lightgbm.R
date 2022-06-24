test_that("encode_data_lightgbm works for train", {
  dat = data.table::data.table(
    y = rnorm(100),
    x_fct = factor(sample(letters, 100, TRUE)),
    x_lgl = sample(c(TRUE, FALSE), 100, TRUE)
  )
  task = as_task_regr(dat, target = "y")
  # debugonce(encode_lightgbm)
  encoding = encode_lightgbm_train(task)
  X = encoding$X
  y = encoding$y
  categorical_feature = encoding$categorical_feature

  X_expected = as.matrix(as.data.frame( # nolint
    list(x_fct = as.integer(dat$x_fct), x_lgl = as.integer(dat$x_lgl))
  ))

  expect_true(all.equal(X_expected, X))

  expect_true(all.equal(categorical_feature, c("x_fct", "x_lgl")))

  learner = lrn("regr.lightgbm")
  expect_error(learner$train(task), regexp = NA)
  learner$predict(task)

  newdata = data.table::data.table(y = 1, x_fct = factor("zzz"), x_lgl = TRUE)

  expect_error(learner$predict_newdata(newdata), "There is a mismatch")

  expect_error(learner$predict(task), regexp = NA)
  learner$param_set$values$early_stopping_split = 0.2
  expect_error(learner$train(task), regexp = NA)
  expect_error(learner$predict(task), regexp = NA)

})
