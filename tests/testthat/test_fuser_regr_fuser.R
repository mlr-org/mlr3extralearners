skip_if_not_installed("fuser")
skip_if_not_installed("mlr3resampling")

requireNamespace("mlr3resampling", quietly = TRUE)

# the autotest tasks need a column with the subset role
generate_tasks.LearnerRegrFuser = function(learner, N = 30L) {
  tasks = generate_tasks.LearnerRegr(learner, N = N)
  map(tasks, function(task) {
    subsets = data.table::data.table(..subset = rep_len(c("a", "b"), task$nrow))
    task$cbind(subsets)$set_col_roles("..subset", roles = "subset")
  })
}
registerS3method("generate_tasks", "LearnerRegrFuser", generate_tasks.LearnerRegrFuser)

fuser_task = function() {
  task = tsk("mtcars")
  task$set_col_roles("cyl", roles = "subset")
}

test_that("autotest", {
  learner = lrn("regr.fuser")
  expect_learner(learner)
  # the newdata of the sanity_reordered task only contains the features and not the subset column
  result = run_autotest(learner, exclude = "sanity_reordered")
  expect_true(result, info = result$error)
})

test_that("regr.fuser predicts on newdata with reordered columns", {
  task = fuser_task()
  learner = lrn("regr.fuser")
  learner$train(task)

  newdata = task$data(cols = c("cyl", rev(task$feature_names)))
  expect_equal(learner$predict_newdata(newdata)$response, learner$predict(task)$response)
})

test_that("regr.fuser fits one coefficient vector per subset", {
  task = fuser_task()
  learner = lrn("regr.fuser", lambda = 0.001, gamma = 0.01)
  learner$train(task)

  expect_matrix(learner$model, nrows = length(task$feature_names), ncols = 3L, any.missing = FALSE)
  expect_equal(dimnames(learner$model), list(task$feature_names, c("4", "6", "8")))

  data = task$data()
  x = as.matrix(data[, task$feature_names, with = FALSE])
  subsets = as.character(task$data(cols = "cyl")$cyl)
  transformed = fuser::generateBlockDiagonalMatrices(x, data$mpg, subsets, matrix(1, 3L, 3L), scaling = FALSE)
  beta = fuser::fusedL2DescentGLMNet(transformed$X, transformed$X.fused, transformed$Y, subsets,
    lambda = 0.001, gamma = 0.01, intercept = FALSE)
  expect_equal(unname(learner$model), beta[, , 1L])

  prediction = learner$predict(task)
  expect_equal(prediction$response, rowSums(x * t(learner$model[, subsets])), ignore_attr = TRUE)
})

test_that("regr.fuser fits an intercept per subset", {
  task = fuser_task()
  learner = lrn("regr.fuser", intercept = TRUE)
  learner$train(task)

  expect_equal(rownames(learner$model), c(task$feature_names, "(Intercept)"))
  expect_prediction(learner$predict(task))
  expect_lt(learner$predict(task)$score(), lrn("regr.fuser")$train(task)$predict(task)$score())
})

test_that("regr.fuser requires the subset role", {
  learner = lrn("regr.fuser")
  expect_error(learner$train(tsk("mtcars")), "role 'subset'")

  task = fuser_task()
  expect_error(learner$train(task, row_ids = which(task$data(cols = "cyl")$cyl == 4)), "at least two subsets")
})

test_that("regr.fuser errors on unseen subsets at predict time", {
  task = fuser_task()
  rows = which(task$data(cols = "cyl")$cyl != 8)
  learner = lrn("regr.fuser")
  learner$train(task, row_ids = rows)
  expect_error(learner$predict(task), "not present during training: '8'")
})

test_that("regr.fuser validates G", {
  task = fuser_task()
  expect_error(lrn("regr.fuser", G = 1), "matrix")
  expect_error(lrn("regr.fuser", G = matrix(1, 2L, 2L))$train(task), "3x3")

  G = matrix(c(0, 1, 0, 1, 0, 0, 0, 0, 0), 3L)
  learner = lrn("regr.fuser", G = G)
  learner$train(task)
  expect_prediction(learner$predict(task))
})
