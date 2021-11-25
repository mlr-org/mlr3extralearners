install_learners("regr.mob")

test_that("autotest", {
  set.seed(1)
  # use a senseless linear model and partition with respect to all features
  lm_ = function(y, x, start = NULL, weights = NULL, offset = NULL, ...) {
    lm(y ~ 1, ...)
  }
  learner = LearnerRegrMob$new()
  learner$param_set$values$rhs = "."
  learner$param_set$values$fit = lm_
  learner$feature_types = c("logical", "integer", "numeric", "factor", "ordered")

  predict_fun = function(object, newdata, task, .type) {
    preds = predict(object, newdata = newdata, type = "response", se.fit = TRUE)
    cbind(preds$fit, preds$se.fit)
  }
  learner$param_set$values$predict_fun = predict_fun
  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("regr.mob", {
  learner = lrn("regr.mob")
  fun = partykit::mob
  exclude = c(
    "formula", # handled in mlr3
    "data", # handled in mlr3
    "subset", # handled in mlr3
    "na.action", # handled in mlr3
    "weights", # handled in mlr3
    "control" # handled in partykit::mob_control
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})

test_that("regr.mob_control", {
  learner = lrn("regr.mob")
  fun = partykit::mob_control
  exclude = c(
  )

  ParamTest = run_paramtest(learner, fun, exclude)
  expect_true(ParamTest, info = paste0(
    "
Missing parameters:
",
    paste0("- '", ParamTest$missing, "'", collapse = "
")))
})
