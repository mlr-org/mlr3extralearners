# default competing risk score needs this package
skip_if_not_installed("riskRegression")
skip_if_not_installed("cmprsk")
skip_if_not_installed("rlang")

test_that("autotest", {
  withr::local_seed(42)
  learner = lrn("cmprsk.crr", na.action = stats::na.omit)
  expect_learner(learner)

    # suppress expected warnings during encapsulation autotest from fallback
    # `cmprsk.aalen`, which lacks the 'missings'  properties of `cmprsk.crr`
    result = suppress_fallback_warnings(
      run_autotest(learner, N = 42, check_replicable = FALSE)
    )
    expect_true(result, info = result$error)
})

