install_learners("classif.mob")

test_that("autotest", {
  # use a senseless logit model and partition with respect to all features
  logit_ = function(y, x, start = NULL, weights = NULL, offset = NULL, ...) {
    glm(y ~ 1, family = binomial, start = start, ...)
  }
  learner = LearnerClassifMob$new()
  learner$param_set$values$rhs = "."
  learner$param_set$values$fit = logit_
  learner$param_set$values$additional = list(maxit = 100)
  learner$feature_types = c("logical", "integer", "numeric", "factor", "ordered")
  learner$properties = c("twoclass", "weights")

  predict_fun = function(object, newdata, task, .type) {
    p = unname(predict(object, newdata = newdata, type = "response"))
    levs = task$levels(task$target_names)[[1L]]

    if (.type == "response") {
      ifelse(p < 0.5, levs[1L], levs[2L])
    } else {
      prob_vector_to_matrix(p, levs)
    }
  }
  learner$param_set$values$predict_fun = predict_fun
  expect_learner(learner)
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("classif.mob", {
  learner = lrn("classif.mob")
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

test_that("classif.mob_control", {
  learner = lrn("classif.mob")
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
