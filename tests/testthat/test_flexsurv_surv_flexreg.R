skip_if_not_installed("flexsurv")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("surv.flexreg", dist = "weibull", hessian = FALSE)
  expect_learner(learner)
  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})

test_that("dist parameter", {
  withr::local_seed(42)
  task = tsk("lung")
  part = partition(task, ratio = 0.8)

  l1 = lrn("surv.flexreg", dist = "weibull")
  l2 = lrn("surv.flexreg", dist = "exp")
  l3 = lrn("surv.flexreg", dist = "lnorm")
  l4 = lrn("surv.flexreg", dist = "llogis")

  p1 = l1$train(task, part$train)$predict(task, part$test)
  p2 = l2$train(task, part$train)$predict(task, part$test)
  p3 = l3$train(task, part$train)$predict(task, part$test)
  p4 = l4$train(task, part$train)$predict(task, part$test)

  expect_prediction_surv(p1)
  expect_prediction_surv(p2)
  expect_prediction_surv(p3)
  expect_prediction_surv(p4)

  # models are different => fitted coefficient for age is different
  expect_false(l1$model$coefficients["age"] == l2$model$coefficients["age"])
  expect_false(l2$model$coefficients["age"] == l3$model$coefficients["age"])
  expect_false(l3$model$coefficients["age"] == l4$model$coefficients["age"])

  # models are different => log likelihoods are different
  expect_false(l1$model$loglik == l2$model$loglik)
  expect_false(l2$model$loglik == l3$model$loglik)
  expect_false(l3$model$loglik == l4$model$loglik)

  # predictions are different
  expect_false(all(p1$lp == p2$lp))
  expect_false(all(p2$lp == p3$lp))
  expect_false(all(p3$lp == p4$lp))
  expect_true(max(abs(p1$data$distr - p2$data$distr)) > 0.07)
  expect_true(max(abs(p2$data$distr - p3$data$distr)) > 0.07)
  expect_true(max(abs(p3$data$distr - p4$data$distr)) > 0.07)
})

test_that("missing", {
  learner = lrn("surv.flexreg", dist = "weibull")
  task = as_task_surv(x = data.frame(
    x1 = c(runif(9), NA),
    event = rbinom(10, 1, 0.5),
    time = rexp(10)), id = "missing")
  expect_error(learner$train(task), class = "Mlr3ErrorInput")
})

test_that("formula interface works", {
  expect_error(lrn("surv.flexreg", formula = "not_a_formula"))
  expect_error(lrn("surv.flexreg", formula = list("not_a_formula")))
  task = tsk("lung")

  form = survival::Surv(time, status) ~ age + sex
  learner = lrn("surv.flexreg", dist = "weibullph", formula = form)
  learner$train(task)
  expect_equal(learner$model$ncovs, 2)
  expect_equal(learner$model$all.formulae$scale, form)
  expect_equal(learner$model$dlist$name, "weibullPH")
  expect_equal(learner$model$dlist$location, "scale")
  # shape, scale, age and sex
  expect_numeric(learner$model$coefficients, len = 4)
  p = learner$predict(task)
  expect_prediction_surv(p)
  # check manual model predictions are the same
  model = flexsurv::flexsurvreg(formula = form, data = task$data(), dist = "weibullph")
  lp = predict(model, newdata = task$data(), type = "lp")[[2L]] # exp(lp) is returned here
  expect_equal(p$lp, log(lp)) # compare the original scale

  # use of `anc` changes coefficients
  learner2 = lrn("surv.flexreg", dist = "weibull", formula = form, anc = list(shape = ~ sex))
  learner2$train(task)
  expect_equal(learner2$model$ncovs, 2)
  expect_equal(learner2$model$all.formulae$scale, form)
  expect_equal(learner2$model$all.formulae$shape, ~sex)
  expect_equal(learner2$model$dlist$name, "weibull.quiet")
  expect_equal(learner2$model$dlist$location, "scale")
  # shape, scale, age, sex and extra `shape(sexm)`
  expect_numeric(learner2$model$coefficients, len = 5)
  p2 = learner2$predict(task)
  expect_prediction_surv(p2)

  # check that the number of common coefficients is 4
  common_names = intersect(names(learner$model$coefficients),
                           names(learner2$model$coefficients))
  expect_length(common_names, 4)
  # all coefficients are different => models are different
  expect_false(any(
    learner$model$coefficients[common_names] ==
    learner2$model$coefficients[common_names]
  ))
  # check manual model predictions are the same
  model2 = flexsurv::flexsurvreg(formula = form, data = task$data(),
                                 anc = list(shape = ~ sex), dist = "weibull")
  lp2 = predict(model2, newdata = task$data(), type = "lp")[[2L]]

  # the minus is because the lp predictions are AFT-style so we flip their sign
  # the log is because we want to compare the original scale of the linear predictors
  expect_equal(-p2$lp, log(lp2))
})

test_that("times parameter works", {
  withr::local_seed(42)
  task = tsk("rats")
  part = partition(task, ratio = 0.8)
  learner = lrn("surv.flexreg", dist = "llogis", times = c(50, 100, 150))
  learner$train(task, part$train)
  p = learner$predict(task, part$test)
  expect_equal(ncol(p$data$distr), 3)
  expect_equal(as.numeric(colnames(p$data$distr)), c(50, 100, 150))
})
