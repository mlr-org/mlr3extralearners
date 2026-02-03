test_that("autotest", {
  skip_if_not_installed("h2o")

  compute = "mlr3_encapsulation_h2o"
  mirai::daemons(1, .compute = compute)
  on.exit(mirai::daemons(0, .compute = compute))

  mirai::everywhere({
    library(h2o)
    h2o::h2o.init(ip = "localhost", startH2O = TRUE)
  }, .compute = compute)

  learner = lrn("classif.h2o.deeplearning", epochs = 10, hidden = c(20L, 20L), seed = 42L)
  expect_learner(learner)

  result = run_autotest(learner, check_replicable = FALSE, exclude = "feat_all")
  # feat_all tasks and thus importance test excluded because h2o internally creates columns per level of the factor variable and then calculates importance score for that column, so column names and importance scores do not match
  expect_true(result, info = result$error)
})
