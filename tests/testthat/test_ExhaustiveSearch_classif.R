skip_if_not_installed("ExhaustiveSearch")

test_that("autotest", {
  learner = LearnerClassifExhaustiveSearch$new()
  expect_learner(learner, check_man = FALSE) # toDo
  # exclusion of sanity task,
  # since learner prefers unimportant feature and therefore predicts badly
  result = run_autotest(learner, exclude = "sanity")
  expect_true(result, info = result$error)
})

test_that("selected features", {
  learner = LearnerClassifExhaustiveSearch$new()
  learner$param_set$set_values(combsUpTo = 3)
  # train learner
  task = tsk("sonar")
  learner$train(task)

  # run ExhaustiveSearch manually
  ES = ExhaustiveSearch::ExhaustiveSearch(
    task$formula(),
    task$data(),
    family = "binomial",
    combsUpTo = 3,
    quietly = TRUE)
  # compare results --- latter part only works with non-factor features
  expect_identical(
    learner$selected_features(),
    ExhaustiveSearch::getFeatures(ES, 1)[-1, 1])
})
