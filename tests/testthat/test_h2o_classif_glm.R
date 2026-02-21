test_that("autotest", {
  skip_if_not_installed("h2o")

  compute = "mlr3_encapsulation"
  mirai::daemons(1, .compute = compute)

  mirai::everywhere({
    library(h2o)
    Sys.unsetenv(c("http_proxy", "https_proxy", "HTTP_PROXY", "HTTPS_PROXY"))
    h2o::h2o.init(ip = "localhost", startH2O = TRUE)
  }, .compute = compute)

  learner = lrn("classif.h2o.glm", max_iterations = 50L, lambda = 1e-5)
  expect_learner(learner)

  result = run_autotest(learner, check_replicable = FALSE, exclude = "feat_all|feat_single_integer_binary")
  # H2O GLM internally expands factor features before computing importances.
  # In some H2O versions, single-integer-feature binary prediction can trigger a Java NPE.
  expect_true(result, info = result$error)
})
