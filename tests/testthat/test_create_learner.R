
# setup temporary pseudo R packager

test_that("create_learner works for tempfile", {

  on.exit({
    rm(file)
  }, add = TRUE)

  file = tempfile()
  file.create(file)

  files = create_learner(
    path = file,
    classname = "LM",
    type = "regr",
    key = "lm",
    package = "stats",
    caller = "lm",
    feature_types = c("logical", "integer", "numeric", "factor"),
    predict_types = c("response", "se"),
    properties = "weights",
    gh_name = "RaphaelS1",
    label = "Linear Regression"
  )
  # just check whether the file was created
  lines = readLines(files)
  expect_true(lines[[1L]] == "#' @title <FIXME : Title for the Learner>")
  expect_error(
    create_learner(path = file,
      classname = "LM",
      type = "regr",
      key = "lm",
      package = "stats",
      caller = "lm",
      feature_types = c("logical", "integer", "numeric", "factor"),
      predict_types = c("response", "se"),
      properties = "weights",
      gh_name = "RaphaelS1",
      label = "Linear Regression"
    )
  )
})

test_that("create_learner works for 'mlr3extralearners': clean plate", {
  on.exit({
    rm(tempdir)
  }, add = TRUE)

  tempdir = create_temppkg()
  files = create_learner(path = tempdir,
    classname = "LM",
    type = "regr",
    key = "lm",
    package = "stats",
    caller = "lm",
    feature_types = c("logical", "integer", "numeric", "factor"),
    predict_types = c("response", "se"),
    properties = "weights",
    gh_name = "RaphaelS1",
    label = "Linear Regression"
  )
  files_expected = c(
    "learner_stats_regr_lm.R",
    "test_stats_regr_lm.R",
    "test_paramtest_stats_regr_lm.R"
  )
  p1 = sprintf("%s/R/%s", tempdir, files[[1L]])
  p2 = sprintf("%s/tests/testthat/%s", tempdir, files[[2L]])
  p3 = sprintf("%s/tests/testthat/%s", tempdir, files[[3L]])

  expect_true(all.equal(files, files_expected))
  expect_true(file.exists(p1))
  expect_true(file.exists(p2))
  expect_true(file.exists(p3))

  cat("1\n", file = p1)
  cat("2\n", file = p2)
  cat("3\n", file = p3)

  create_learner(path = tempdir,
    classname = "LM",
    type = "regr",
    key = "lm",
    package = "stats",
    caller = "lm",
    feature_types = c("logical", "integer", "numeric", "factor"),
    predict_types = c("response", "se"),
    properties = "weights",
    gh_name = "RaphaelS1",
    label = "Linear Regression"
  )
  expect_true(readLines(p1)[[1L]] == "1")
  expect_true(readLines(p2)[[1L]] == "2")
  expect_true(readLines(p3)[[1L]] == "3")
})
