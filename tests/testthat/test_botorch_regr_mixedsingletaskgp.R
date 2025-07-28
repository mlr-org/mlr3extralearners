# test_that("autotest: regr.botorch_mixedsingletaskgp", {
#   learner = mlr3::lrn("regr.botorch_mixedsingletaskgp")
#   expect_learner(learner)
#   # learner needs at least one logical or categorical feature
#   # sanity check includes only numeric features
#   result = run_autotest(learner, exclude = c("feat_single_numeric|feat_single_integer|sanity"))
#   expect_true(result, info = result$error)
# })
