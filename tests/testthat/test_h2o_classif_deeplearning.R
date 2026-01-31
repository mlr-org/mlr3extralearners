test_that("autotest", {
  skip_if_not_installed("h2o")

  mirai::daemons(1, .compute = "mlr3_encapsulation")

  mirai::everywhere({
    library(h2o)
    h2o::h2o.init(ip = "127.0.0.1", startH2O = TRUE)
  }, .compute = "mlr3_encapsulation")

  learner = lrn("classif.h2o.deeplearning", epochs = 7, hidden = c(10L, 10L), seed = 42L)
  expect_learner(learner)

  result = run_autotest(learner, check_replicable = FALSE)
  expect_true(result, info = result$error)
})
