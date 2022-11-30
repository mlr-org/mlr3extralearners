test_that("unloading mlr3extralearners leaves no trace", {
  library(mlr3extralearners)
  n_extra = length(.extralrns_dict$lrns)
  n_total = length(mlr_learners$keys())
  unloadNamespace("mlr3extralearners")
  n_mlr = length(mlr_learners$keys())
  expect_true(n_total - n_mlr == n_extra)
})
