test_that("autotest", {
  learner = lrn("classif.rpf")
  expect_learner(learner)
  result = run_autotest(learner)
  # FIXME: Response is different for different predict types
  # due to use of max.col() in both the learner and
  # check_prediction_data.PredictionDataClassif
  # https://github.com/mlr-org/mlr3/blob/main/R/PredictionDataClassif.R#L48
  #
  # Both randomly select a class if they have equal probability prediction,
  # hence for A = 0.5 and B = 0.5 predict.rpf may assign class A, but check_prediction_data
  # may assign class B.
  expect_true(result, info = result$error)
})
