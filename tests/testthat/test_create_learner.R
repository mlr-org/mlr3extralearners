test_that("create_learner works for tempdir", {
  on.exit({
    rm(path)
  }, add = TRUE)

  path = tempfile()
  dir.create(path, recursive = TRUE)

  files = create_learner(
    path = path,
    classname = "LM",
    type = "regr",
    key = "lm",
    algorithm = "Linear Model",
    package = "stats",
    caller = "lm",
    feature_types = c("logical", "integer", "numeric", "factor"),
    predict_types = c("response", "se"),
    properties = "weights",
    gh_name = "RaphaelS1",
    label = "Linear Model"
  )

  # just check whether the file was created
  template_lrn = suppressWarnings(readLines(files[["learner"]]))
  template_test = readLines(files[["test"]])
  template_ptest = readLines(files[["param_test"]])

  # skip the last line (adds the learner to dict)
  code_learner = paste(template_lrn[seq(1, length(template_lrn) - 1L)], collapse = "\n")
  e = parse(text = code_learner)
  Learner = eval(e)
  expect_error(learner <<- Learner$new(), regexp = NA)
  expect_true(all(learner$predict_types == c("response", "se")))
  expect_true("stats" %in% learner$packages)
  expect_true(learner$label == "Linear Model")
  expect_true(class(learner)[1L] == "LearnerRegrLM")

  expect_true(template_lrn[1L] == "#' @title Regression Linear Model Learner")
  expect_true(template_test[1L] == "test_that(\"autotest\", {")
  expect_true(template_ptest[1L] == "test_that(\"regr.lm train\", {")

  # check whether the files can be parsed
  expect_error(parse(files[1L]), regexp = NA)
  expect_error(parse(files[2L]), regexp = NA)
  expect_error(parse(files[3L]), regexp = NA)

  # when the files exist we don't modify them.
  expect_message(
    expect_message(
      expect_message(
        create_learner(
          path = path,
          classname = "LM",
          type = "regr",
          key = "lm",
          algorithm = "Linear Model",
          package = "stats",
          caller = "lm",
          feature_types = c("logical", "integer", "numeric", "factor"),
          predict_types = c("response", "se"),
          properties = "weights",
          gh_name = "RaphaelS1",
          label = "Linear Regression"
        ),
        regexp = "File learner_stats_regr_lm.R already exists. Manually edit the file.",
        fixed = TRUE
      ),
      regexp = "File test_paramtest_stats_regr_lm.R already exists. Manually edit the file.",
      fixed = TRUE
    ),
    regexp = "File test_stats_regr_lm.R already exists. Manually edit the file.",
    fixed = TRUE
  )
})

test_that("create_learner works for an R package", {
  on.exit({
    rm(path)
  }, add = TRUE)

  path = tempfile()
  dir.create(path, recursive = TRUE)
  file.create(sprintf("%s/DESCRIPTION", path))

  files = create_learner(
    path = path,
    classname = "LM",
    type = "regr",
    key = "lm",
    algorithm = "Linear Model",
    package = "stats",
    caller = "lm",
    feature_types = c("logical", "integer", "numeric", "factor"),
    predict_types = c("response", "se"),
    properties = "weights",
    gh_name = "RaphaelS1",
    label = "Linear Regression"
  )
  files_expected = paste0(path, "/",
    c(
      "R/learner_stats_regr_lm.R",
      "tests/testthat/test_stats_regr_lm.R",
      "tests/testthat/test_paramtest_stats_regr_lm.R"
    )
  )

  expect_set_equal(
    files,
    files_expected
  )

  # just check whether the file was created
  template_lrn = readLines(files[["learner"]])
  template_test = readLines(files[["test"]])
  template_ptest = readLines(files[["param_test"]])


  expect_true(template_lrn[1L] == "#' @title Regression Linear Model Learner")
  expect_true(template_test[1L] == "test_that(\"autotest\", {")
  expect_true(template_ptest[1L] == "test_that(\"regr.lm train\", {")


  expect_message(
    expect_message(
      expect_message(
        create_learner(
          path = path,
          classname = "LM",
          type = "regr",
          key = "lm",
          algorithm = "Linear Model",
          package = "stats",
          caller = "lm",
          feature_types = c("logical", "integer", "numeric", "factor"),
          predict_types = c("response", "se"),
          properties = "weights",
          gh_name = "RaphaelS1",
          label = "Linear Regression"
        ),
        regexp = "File learner_stats_regr_lm.R already exists. Manually edit the file.",
        fixed = TRUE
      ),
      regexp = "File test_paramtest_stats_regr_lm.R already exists. Manually edit the file.",
      fixed = TRUE
    ),
    regexp = "File test_stats_regr_lm.R already exists. Manually edit the file.",
    fixed = TRUE
  )
})


test_that("Commas are fixed properly", {
  on.exit({
    rm(path)
  }, add = TRUE)

  path = tempfile()
  dir.create(path, recursive = TRUE)

  properties = "weights"
  methods = c("importance", "loglik", "oob_error", "selected_features")
  for (method in methods) {
    if (runif(1) < 0.5) {
      properties = c(properties, method)
    }
  }
  u = sample(3, 1)
  if (u == 1) {
    properties = c(properties, "hotstart_forward")
  } else if (u == 2) {
    properties = c(properties, "hotstart_backward")
  }

  files = create_learner(
    path = path,
    classname = "LM",
    type = "regr",
    key = "lm",
    algorithm = "Linear Model",
    package = "stats",
    caller = "lm",
    feature_types = c("logical", "integer", "numeric", "factor"),
    predict_types = c("response", "se"),
    properties = properties,
    gh_name = "RaphaelS1",
    label = "Linear Model"
  )

  # just check whether the file was created
  template_lrn = readLines(files[["learner"]])

  # skip the last line (adds the learner to dict)
  code_learner = paste(template_lrn[seq(1, length(template_lrn) - 1L)], collapse = "\n")
  e = parse(text = code_learner)
  Learner = eval(e)
  expect_error(learner <<- Learner$new(), regexp = NA)
  expect_set_equal(learner$properties, properties)
})
