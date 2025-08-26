skip_if_not_installed("BART")

test_that("autotest", {
  with_seed(1, {
    learner = lrn("surv.bart", nskip = 1, ndpost = 1, keepevery = 1)
    expect_learner(learner)
    capture.output({result = run_autotest(learner)})
    expect_true(result, info = result$error)
  })
})
