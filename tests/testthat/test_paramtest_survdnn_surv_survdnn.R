skip_if_not_installed("mlr3proba")
skip_if_not_installed("survdnn")
skip_if_not_installed("torch")

test_that("train surv.survdnn", {
  learner = LearnerSurvDNN$new()
  fun = survdnn::survdnn

  exclude = c(
    "formula",   
    "data"       
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "train")
  expect_paramtest(paramtest)
})

test_that("predict surv.survdnn", {
  learner = LearnerSurvDNN$new()
  fun = survdnn:::predict.survdnn 

  exclude = c(
    "object",  
    "newdata", 
    "times",   
    "type",   
    "..."     
  )

  paramtest = run_paramtest(learner, fun, exclude, tag = "predict")
  expect_paramtest(paramtest)
})
