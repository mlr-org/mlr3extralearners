skip_if_not_installed("ExhaustiveSearch")

test_that("autotest", {
  learner = LearnerRegrExhaustiveSearch$new()
  expect_learner(learner, check_man = FALSE) # toDo
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})

test_that("selected features", {
  learner = LearnerRegrExhaustiveSearch$new()
  learner$param_set$set_values(combsUpTo = 3)
  # train learner
  task = tsk("mtcars")
  learner$train(task)

  # run ExhaustiveSearch manually
  ES = ExhaustiveSearch::ExhaustiveSearch(
    task$formula(),
    task$data(),
    family = "gaussian",
    combsUpTo = 3,
    quietly = TRUE)
  # compare results --- latter part only works with non-factor features
  expect_identical(
    learner$selected_features(),
    ExhaustiveSearch::getFeatures(ES, 1)[-1, 1])
})
