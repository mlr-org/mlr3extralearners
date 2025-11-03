skip_if_not_installed("flexsurv")

test_that("autotest", {
  withr::local_seed(200)
  learner = lrn("surv.flexible", k = 1, scale = "normal", inits = c(0.1, 1))
  expect_learner(learner)
  # sanity excluded due to issues in optimisation (it's too easy...)
  result = run_autotest(learner, check_replicable = FALSE, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("manualtest", {
  withr::local_seed(1)
  task = tsk("rats")
  learn = lrn("surv.flexible", k = 1, scale = "normal", inits = c(1, 1, 1))
  learn$train(task)
  p = learn$predict(task)
  # Comparison to flexsurv
  expect_equal(
    p$lp[1:20],
    summary(learn$model,
      task$data(cols = task$feature_names),
      se = FALSE, ci = FALSE, type = "link", tidy = TRUE)[1:20, 2]
  )
  expect_equal(
    p$distr[2]$survival(1:23),
    summary(learn$model,
      task$data(cols = task$feature_names),
      se = FALSE, ci = FALSE, type = "survival", tidy = TRUE, t = 1:23)[24:46, 2],
    tolerance = 0.0001
  )
})

test_that("missing", {
  learner = lrn("surv.flexible", k = 1)
  learner$train(tsk("lung"))
  expect_error(learner$predict(lung_missings))
})

test_that("formula interface works", {
  expect_error(lrn("surv.flexible", formula = "not_a_formula"))
  expect_error(lrn("surv.flexible", formula = list("not_a_formula")))
  task = tsk("lung")

  form = Surv(time, status) ~ age + sex
  learner = lrn("surv.flexible", k = 1, formula = form)
  learner$train(task)
  expect_equal(learner$model$ncovs, 2)
  expect_equal(learner$model$all.formulae$gamma0, form)
  expect_equal(learner$model$dlist$name, "survspline")
  expect_equal(learner$model$dlist$location, "gamma0")
  # 3 gammaX params + age and sex
  expect_numeric(learner$model$coefficients, len = 5)
  p = learner$predict(task)
  expect_prediction_surv(p)
  # check manual model predictions are the same
  model = flexsurv::flexsurvspline(formula = form, data = task$data(), k = 1)
  lp = predict(model, newdata = task$data(), type = "lp")[[2]]
  expect_equal(p$lp, lp)

  # use of `anc` changes coefficients
  learner2 = lrn("surv.flexible", k = 1, formula = form, anc = list(gamma1 = ~ sex))
  learner2$train(task)
  expect_equal(learner2$model$ncovs, 2)
  expect_equal(learner2$model$all.formulae$gamma0, form)
  expect_equal(learner2$model$dlist$name, "survspline")
  expect_equal(learner2$model$dlist$location, "gamma0")
  # 3 gammaX params + age, sex and extra `gamma1(sexm)`
  expect_numeric(learner2$model$coefficients, len = 6)
  p2 = learner2$predict(task)
  expect_prediction_surv(p2)

  # check that the number of common coefficients is 5
  common_names = intersect(names(learner$model$coefficients),
                           names(learner2$model$coefficients))
  expect_length(common_names, 5)
  # all coefficients are different => models are different
  expect_false(any(
    learner$model$coefficients[common_names] ==
    learner2$model$coefficients[common_names]
  ))
  # check manual model predictions are the same
  model2 = flexsurv::flexsurvspline(formula = form, data = task$data(),
                                    anc = list(gamma1 = ~ sex), k = 1)
  lp2 = predict(model2, newdata = task$data(), type = "lp")[[2]]
  expect_equal(p2$lp, lp2)
})
