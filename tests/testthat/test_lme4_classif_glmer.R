test_that("autotest", {
  learner = lrn("classif.glmer")
  expect_learner(learner)
  # Set a formula and run through each test in turn.

  # Test with single logical feature
  learner$param_set$values$formula = as.formula("target ~ (1|logical)")
  result_logical = run_autotest(
    learner,
    exclude = "(sanity)|(all)|(utf)|(integer)|(numeric)|(factor)"
  )
  expect_true(result_logical, info = result_logical$error)

  # Test with single factor feature
  learner$param_set$values$formula = as.formula("target ~ (1|factor)")
  result_factor = run_autotest(
    learner,
    exclude = "(sanity)|(all)|(utf)|(integer)|(numeric)|(logical)"
  )
  expect_true(result_factor, info = result_factor$error)

  # Test with single integer feature
  learner$param_set$values$formula = as.formula("target ~ (1|integer)")
  result_integer = run_autotest(
    learner,
    exclude = "(sanity)|(all)|(utf)|(factor)|(numeric)|(logical)"
  )
  expect_true(result_integer, info = result_integer$error)

  # Note: a mixed effects model cannot be built with only float features since
  # the number of effect groups will not be fewer than the number of observations,
  # so the numeric single test and the sanity tests are skipped.

  # Test with all features
  learner$param_set$values$formula = as.formula("target ~ (numeric+integer+logical|factor)")
  result_all = run_autotest(
    learner,
    exclude = "(sanity)|(utf)|(fact)|(int)|(log)|(num)"
  )
  expect_true(result_all, info = result_all$error)
})
