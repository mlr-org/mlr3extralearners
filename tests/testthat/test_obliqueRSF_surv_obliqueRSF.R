install_learners("surv.obliqueRSF")
load_tests("surv.obliqueRSF")

learner = lrn("surv.obliqueRSF", compute_oob_predictions = TRUE)
expect_learner(learner)
task = generate_tasks(learner)$feat_all
learner$train(task)
p = learner$predict(task)
print(p)
print(p$score(msr("surv.cindex")))

# test_that("autotest", {
#
#   # result = run_autotest(learner, exclude = "single", N = 30, check_replicable = FALSE)
#   # expect_true(result, info = result$error)
# })
