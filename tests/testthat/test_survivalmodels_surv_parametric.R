test_that("autotest aft", {
  set.seed(1)
  learner = lrn("surv.parametric")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

test_that("autotest ph", {
  set.seed(1)
  learner = lrn("surv.parametric", form = "ph", discrete = FALSE)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

test_that("autotest po", {
  set.seed(1)
  learner = lrn("surv.parametric", form = "po")
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "utf8_feature_names")
  expect_true(result, info = result$error)
})

task = tsk("lung")

test_that("time points for prediction", {
  learner = lrn("surv.parametric")
  p = learner$train(task)$predict(task)
  times = as.integer(colnames(p$data$distr))
  expect_equal(times, task$unique_times()) # unique train time points are used

  # use many more time points than the ones in the train set
  learner$param_set$set_values(.values = list(ntime = 9999))
  p = learner$train(task)$predict(task)
  times = as.integer(colnames(p$data$distr))
  expect_equal(times, task$unique_times()) # all unique train time points are still used

  learner$param_set$set_values(.values = list(ntime = 50))
  p = learner$train(task)$predict(task)
  times = as.integer(colnames(p$data$distr))
  # min and max times are retained after coersion
  expect_equal(min(times), min(task$unique_times()))
  expect_equal(max(times), max(task$unique_times()))
  expect_equal(length(times), 50)
})

test_that("manualtest - aft", {
  learner = lrn("surv.parametric", dist = "weibull", form = "aft", discrete = FALSE)
  expect_silent(learner$train(task))
  p = learner$predict(task)
  expect_prediction_surv(p)
  expect_equal(-p$lp, predict(learner$model$model, type = "lp"))
  expect_equal(p$distr[1]$survival(predict(
    learner$model$model, type = "quantile", p = c(0.2, 0.8)
  )[1, ]), c(0.8, 0.2))
  expect_equal(p$distr[10]$cdf(predict(
    learner$model$model, type = "quantile", p = seq.int(0, 1, 0.1)
  )[10, ]),
  seq.int(0, 1, 0.1))

  learner = lrn("surv.parametric", dist = "lognormal", form = "aft", discrete = FALSE)$train(task)
  p = learner$predict(task)
  expect_equal(p$distr[15]$cdf(predict(
    learner$model$model, type = "quantile", p = seq.int(0, 1, 0.1)
  )[15, ]), seq.int(0, 1, 0.1))
})

test_that("missing", {
  learner = lrn("surv.parametric")
  learner$train(task)
  expect_error(learner$predict(lung_missings))
})

test_that("quantile type", {
  learner = lrn("surv.parametric", dist = "weibull", form = "aft", discrete = FALSE)$train(task)
  p = lrn("surv.parametric", dist = "weibull", form = "aft", discrete = FALSE)$train(task)$predict(task)
  quantile = p$distr$quantile(c(0.2, 0.8))
  expect_equal(matrix(t(quantile), ncol = 2),
               predict(learner$model$model, type = "quantile", p = c(0.2, 0.8)))
  quantile = p$distr$quantile(0.5)
  expect_equal(unlist(p$distr$cdf(quantile), use.names = FALSE), rep(0.5, task$nrow))

  p = lrn("surv.parametric", dist = "weibull", form = "ph", discrete = FALSE)$train(task)$predict(task)
  quantile = p$distr$quantile(0.5)
  expect_equal(unlist(p$distr$cdf(quantile), use.names = FALSE), rep(0.5, task$nrow))

  p = lrn("surv.parametric", dist = "weibull", form = "po", discrete = FALSE)$train(task)$predict(task)
  quantile = p$distr$quantile(0.5)
  expect_equal(unlist(p$distr$cdf(quantile), use.names = FALSE), rep(0.5, task$nrow))
})

test_that("quantile dist", {
  learner = lrn("surv.parametric", dist = "weibull", form = "aft", discrete = FALSE)$train(task)
  p = learner$predict(task)
  quantile = p$distr$quantile(c(0.2, 0.8))
  expect_equal(matrix(t(quantile), ncol = 2),
               predict(learner$model$model, type = "quantile", p = c(0.2, 0.8)))

  learner = lrn("surv.parametric", dist = "exponential", form = "aft", discrete = FALSE)$train(task)
  p = learner$predict(task)
  quantile = p$distr$quantile(c(0.2, 0.8))
  expect_equal(matrix(t(quantile), ncol = 2),
               predict(learner$model$model, type = "quantile", p = c(0.2, 0.8)))

  learner = lrn("surv.parametric", dist = "gaussian", form = "tobit", discrete = FALSE)$train(task)
  p = learner$predict(task)
  quantile = p$distr$quantile(c(0.2, 0.8))
  expect_equal(matrix(t(quantile), ncol = 2),
               predict(learner$model$model, type = "quantile", p = c(0.2, 0.8)))

  learner = lrn("surv.parametric", dist = "lognormal", discrete = FALSE)$train(task)
  p = learner$predict(task)
  quantile = p$distr$quantile(c(0.2, 0.8))
  expect_equal(matrix(t(quantile), ncol = 2),
               predict(learner$model$model, type = "quantile", p = c(0.2, 0.8)))
})

test_that("cdf dist", {
  row_ids = 1:10
  value = length(row_ids)

  learner = lrn("surv.parametric", dist = "weibull", form = "aft", discrete = FALSE)$train(task)
  p = learner$predict(task, row_ids = row_ids)
  cdf = predict(learner$model$model, type = "quantile", p = c(0.2, 0.8))[row_ids, ]
  expect_equal(unname(as.matrix(p$distr$cdf(data = t(cdf)))),
               matrix(c(rep(0.2, value), rep(0.8, value)), byrow = TRUE, nrow = 2))

  learner = lrn("surv.parametric", dist = "exponential", form = "aft", discrete = FALSE)$train(task)
  p = learner$predict(task, row_ids = row_ids)
  cdf = predict(learner$model$model, type = "quantile", p = c(0.2, 0.8))[row_ids, ]
  expect_equal(unname(as.matrix(p$distr$cdf(data = t(cdf)))),
               matrix(c(rep(0.2, value), rep(0.8, value)), byrow = TRUE, nrow = 2))

  learner = lrn("surv.parametric", dist = "gaussian", form = "tobit", discrete = FALSE)$train(task)
  p = learner$predict(task, row_ids = row_ids)
  cdf = predict(learner$model$model, type = "quantile", p = c(0.2, 0.8))[row_ids, ]
  expect_equal(unname(as.matrix(p$distr$cdf(data = t(cdf)))),
               matrix(c(rep(0.2, value), rep(0.8, value)), byrow = TRUE, nrow = 2))

  learner = lrn("surv.parametric", dist = "lognormal", discrete = FALSE)$train(task)
  p = learner$predict(task, row_ids = row_ids)
  cdf = predict(learner$model$model, type = "quantile", p = c(0.2, 0.8))[row_ids, ]
  expect_equal(unname(as.matrix(p$distr$cdf(data = t(cdf)))),
               matrix(c(rep(0.2, value), rep(0.8, value)), byrow = TRUE, nrow = 2))
})

test_that("loglogistic", {
  row_ids = 1:10
  value = length(row_ids)

  learner = lrn("surv.parametric", dist = "loglogistic", discrete = FALSE)$train(task)
  p = learner$predict(task, row_ids = row_ids)
  quantile = p$distr$quantile(c(0.2, 0.8))
  expect_equal(matrix(t(quantile), ncol = 2),
               predict(learner$model$model, type = "quantile", p = c(0.2, 0.8))[row_ids, ])


  learner = lrn("surv.parametric", dist = "loglogistic", discrete = FALSE)$train(task)
  p = learner$predict(task, row_ids = row_ids)
  cdf = predict(learner$model$model, type = "quantile", p = c(0.2, 0.8))[row_ids, ]
  expect_equal(unname(as.matrix(p$distr$cdf(data = t(cdf)))),
               matrix(c(rep(0.2, value), rep(0.8, value)), byrow = TRUE, nrow = 2))
})

task = tsk("rats")
task$filter(sample(task$nrow, 100))

test_that("discrete - aft", {
  p_cont = lrn("surv.parametric", discrete = FALSE)$train(task)$predict(task)
  p_disc = lrn("surv.parametric", discrete = TRUE)$train(task)$predict(task)
  expect_equal(p_cont$lp, p_disc$lp)
  expect_true(inherits(p_disc$distr, "Matdist"))
  s_cont = as.matrix(p_cont$distr$survival(task$unique_times()))
  dimnames(s_cont) = list(task$unique_times(), NULL)
  s_disc = p_disc$distr$survival(task$unique_times())
  expect_equal(s_cont, s_disc)
})

test_that("discrete - tobit", {
  p_cont = lrn("surv.parametric", discrete = FALSE, form = "tobit")$train(task)$predict(task)
  p_disc = lrn("surv.parametric", discrete = TRUE, form = "tobit")$train(task)$predict(task)
  expect_equal(p_cont$lp, p_disc$lp)
  expect_true(inherits(p_disc$distr, "Matdist"))
  s_cont = as.matrix(p_cont$distr$survival(task$unique_times()))
  dimnames(s_cont) = list(task$unique_times(), NULL)
  s_disc = p_disc$distr$survival(task$unique_times())
  expect_equal(s_cont, s_disc)
})

test_that("discrete - ph", {
  p_cont = lrn("surv.parametric", discrete = FALSE, form = "ph")$train(task)$predict(task)
  p_disc = lrn("surv.parametric", discrete = TRUE, form = "ph")$train(task)$predict(task)
  expect_equal(p_cont$lp, p_disc$lp)
  expect_true(inherits(p_disc$distr, "Matdist"))
  s_cont = as.matrix(p_cont$distr$survival(task$unique_times()))
  dimnames(s_cont) = list(task$unique_times(), NULL)
  s_disc = p_disc$distr$survival(task$unique_times())
  expect_equal(s_cont, s_disc)
})

test_that("discrete - po", {
  p_cont = lrn("surv.parametric", discrete = FALSE, form = "po")$train(task)$predict(task)
  p_disc = lrn("surv.parametric", discrete = TRUE, form = "po")$train(task)$predict(task)
  expect_equal(p_cont$lp, p_disc$lp)
  expect_true(inherits(p_disc$distr, "Matdist"))
  s_cont = as.matrix(p_cont$distr$survival(task$unique_times()))
  dimnames(s_cont) = list(task$unique_times(), NULL)
  s_disc = p_disc$distr$survival(task$unique_times())
  expect_equal(s_cont, s_disc)
})
