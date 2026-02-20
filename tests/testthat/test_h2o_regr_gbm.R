test_that("autotest", {
  skip_if_not_installed("h2o")

  compute = "mlr3_encapsulation_h2o"
  mirai::daemons(1, .compute = compute)
  on.exit(mirai::daemons(0, .compute = compute), add = TRUE)

  mirai::everywhere({
    library(h2o)
    h2o::h2o.init(ip = "127.0.0.1", startH2O = TRUE)
  }, .compute = compute)

  learner = lrn("regr.h2o.gbm",
    ntrees = 50L,
    max_depth = 5L,
    min_rows = 1L,
    seed = 42L
  )
  expect_learner(learner, check_man = FALSE)

  # feat_all tasks and the importance test are excluded because h2o can encode
  # factor levels into internal columns, so names can differ from task features.
  result = run_autotest(learner, check_replicable = FALSE, exclude = "feat_all")
  expect_true(result, info = result$error)
})
