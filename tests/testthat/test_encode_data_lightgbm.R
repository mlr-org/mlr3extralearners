test_that("encode_data_lightgbm works for train", {
  dat = data.table::data.table(
    y = rnorm(100),
    x_fct = factor(sample(letters, 100, TRUE)),
    x_lgl = sample(c(TRUE, FALSE), 100, TRUE)
  )
  task = as_task_regr(dat, target = "y")
  learner = lrn("regr.lightgbm")
  expect_error(learner$train(task), regexp = NA)
  learner$predict(task)

  newdata = data.table::data.table(y = 1, x_fct = factor("zzz"), x_lgl = TRUE)

  expect_error(learner$predict_newdata(newdata), "There is a mismatch")

  expect_error(learner$predict(task), regexp = NA)
  expect_error(learner$train(task), regexp = NA)
  expect_error(learner$predict(task), regexp = NA)

})
