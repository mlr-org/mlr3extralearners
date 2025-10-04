# default competing risk score needs this package
skip_if_not_installed("riskRegression")
skip_if_not_installed("cmprsk")
skip_if_not_installed("rlang")


  withr::local_seed(42)
  task = tsk("pbc")
  task$select(c("age", "trt"))
  size = task$nrow
  logicalx = sample(c(TRUE, FALSE), size = size, replace = TRUE)  
  task$cbind(data.frame(logicalx = logicalx))
  
  ids = partition(task, ratio = 0.95)
  
test_that("learner wout cov2", {
  learner = lrn("cmprsk.crr", maxiter =11)
  expect_learner(learner, task, check_man = TRUE)
  learner$train(task, ids$train)
    
  preds = learner$predict(task, ids$test)
  
  cat("\n --- preds_created")
})


cov2_info = list(feat2 ="trt",
                 tf = function(uft) log(uft))
test_that("learner with cov2_info", {
  learner = lrn("cmprsk.crr", maxiter =11, cov2_info = cov2_info)
  expect_learner(learner, task)
  learner$train(task, ids$train)
  cat("\n --- Model with time by trt interaction \n")
  print(learner$model)
    
  preds = learner$predict(task, ids$test)
  print(preds)
  cat("\n --- preds_created")
})
