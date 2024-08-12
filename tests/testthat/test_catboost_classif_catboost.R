test_that("autotest", {
  learner = lrn("classif.catboost", iterations = 10)
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("#353", {
  iris_task = tsk("iris")
  lrn_catboost_classif = lrn("classif.catboost", predict_type = "prob")
  resamp = rsmp("holdout")
  rr = resample(iris_task, ,
    learner = lrn_catboost_classif,
    resampling = resamp)

  pred = rr$prediction() 
  assert_true(all(abs(rowSums(pred$prob) - 1) < 0.001))
})
