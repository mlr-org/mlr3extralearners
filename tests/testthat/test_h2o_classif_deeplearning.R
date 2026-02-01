test_that("autotest", {
  skip_if_not_installed("h2o")

  compute = "mlr3_encapsulation_h2o"
  mirai::daemons(1, .compute = compute)
  on.exit(mirai::daemons(0, .compute = compute), add = TRUE)

  mirai::everywhere({
    library(h2o)
    h2o::h2o.init(ip = "127.0.0.1", startH2O = TRUE)
  }, .compute = compute)

  learner = lrn("classif.h2o.deeplearning", epochs = 10, hidden = c(20L, 20L), seed = 42L)
  expect_learner(learner)

  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
