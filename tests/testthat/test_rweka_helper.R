skip_if_not_installed("RWeka")

skip_on_os("windows")

test_that("rweka_helper train", {
  task = tsk("breast_cancer")
  weka_learner = RWeka::DecisionStump
  learner = lrn("classif.decision_stump")
  pars = learner$param_set$get_values(tags = "train")
  model = rweka_train(task$data(), task$formula(), pars, weka_learner)
  expect_class(model, "Weka_classifier")
})

test_that("rweka_helper predict", {
  task = tsk("breast_cancer")
  weka_learner = RWeka::DecisionStump
  learner = lrn("classif.decision_stump")
  pars = learner$param_set$get_values(tags = "predict")
  model = rweka_train(task$data(), task$formula(), pars, weka_learner)
  for (predict_type in learner$predict_types) {
    prediction = rweka_predict(task$data(), pars, predict_type, model)
    expect_list(prediction)
    expect_equal(names(prediction), predict_type)
  }
})
