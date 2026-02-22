test_that("autotest", {
  skip_if_not_installed("h2o")

  compute = "mlr3_encapsulation_h2o"
  mirai::daemons(1, .compute = compute)
  on.exit(mirai::daemons(0, .compute = compute))

  mirai::everywhere({
    library(h2o)
    h2o::h2o.init(ip = "localhost", startH2O = TRUE)
  }, .compute = compute)

  learner = lrn("regr.h2o.glm", max_iterations = 25L, lambda = 1e-05)
  expect_learner(learner)

  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
