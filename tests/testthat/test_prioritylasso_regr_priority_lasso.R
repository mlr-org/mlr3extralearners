test_that("autotest", {
  # These shenanigans are necessary because we have to dynanically set the blocks, depending on the
  set.seed(1)
  learner = lrn("regr.priority_lasso", blocks = "PLACEHOLDER")
  on.exit({
    assignInNamespace(".__LearnerRegrPriorityLasso__.train", train_old, ns = "mlr3extralearners")
  }, add = TRUE)
  train_old = mlr3extralearners:::.__LearnerRegrPriorityLasso__.train # nolint

  src = as.list(body(train_old))
  new_lines = list(
    quote(s <- seq_along(task$feature_names)),
    quote(pars$blocks <- set_names(list(s), "bp1"))
  )
  src = c(src[1:2], new_lines, src[3:length(src)])
  new_body = as.call(src)
  train = train_old
  body(train) = new_body
  assignInNamespace(".__LearnerRegrPriorityLasso__.train", train, ns = "mlr3extralearners")

  result = run_autotest(learner, exclude = "feat_single")
  expect_true(result, info = result$error)
})
