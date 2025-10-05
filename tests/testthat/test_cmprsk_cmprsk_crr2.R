# default competing risk score needs this package
skip_if_not_installed("riskRegression")
skip_if_not_installed("cmprsk")
skip_if_not_installed("rlang")

test_that("pbc test, emulates autotest", {
  withr::local_seed(42)
  task = tsk("pbc")
  task$select(c("age", "trt"))
  size = task$nrow
  logicalf = sample(c(TRUE, FALSE), size = size, replace = TRUE)
  task$cbind(data.frame(logicalf = logicalf))
  
  ids = partition(task, ratio = 0.95)
  cat("\n --- Partition worked")
  learner = lrn("cmprsk.crr")
  cat("\n Learner init worked")
  expect_learner(learner)
  learner$train(task, ids$train)
  cat("\n --- Learner trained")
    
  preds = learner$predict(task, ids$test)
  cat("\n --- preds_created")

  
  learner_encapsulated = learner$clone(deep = TRUE)
  cat("\n --- Deep clone created")
  suppress_fallback_warnings(
    learner_encapsulated$encapsulate("mirai", default_fallback(learner_encapsulated))
  )
  cat("\n --- Learner encapsulation done", "\n")
  rr =  resample(task, learner_encapsulated, rsmp("holdout"), store_models = TRUE)
  cat("\n --- Resampling executed")

})

