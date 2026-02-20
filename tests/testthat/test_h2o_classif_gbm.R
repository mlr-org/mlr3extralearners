test_that("autotest", {
  skip_if_not_installed("h2o")

  compute = "mlr3_encapsulation_h2o"
  mirai::daemons(1, .compute = compute)
  on.exit(mirai::daemons(0, .compute = compute))

  mirai::everywhere({
    library(h2o)
    h2o::h2o.init(ip = "localhost", startH2O = TRUE)
  }, .compute = compute)

  learner = lrn("classif.h2o.gbm", ntrees = 10L, max_depth = 3L, min_rows = 1, seed = 42L, reproducible = TRUE)
  expect_learner(learner)

  result = run_autotest(learner, check_replicable = FALSE, exclude = "feat_all")
  expect_true(result, info = result$error)
})
